"""
upload_skins.py
Uploads sulfur_cube skin PNGs to mineskin.org and saves texture values to a cache JSON.

Usage:
  python upload_skins.py [--api-key YOUR_KEY]

Input:  skins/**/<variant>.png  (searched recursively)
Output: output/head_data/sulfur_cube.json

Resume-safe: already uploaded variants are skipped.
Rate limit: ~1 req/s anonymous, faster with API key (get one at https://mineskin.org/account).
"""

import sys
import json
import re
import time
import pathlib
import argparse
import urllib.request
import urllib.error

SCRIPT_DIR  = pathlib.Path(__file__).parent
SKINS_DIR   = SCRIPT_DIR / "skins"
OUTPUT_DIR  = SCRIPT_DIR / "output" / "head_data"
CACHE_PATH  = OUTPUT_DIR / "sulfur_cube.json"

SKIN_PREFIX   = "sulfur_cube_"
DEFAULT_SOUND = "minecraft:entity.sulfur_cube.ambient"

ITEM_REMAP = {
    "honeycomb": "honeycomb_block",
    "hay_bale":  "hay_block",
}

MINESKIN_URL = "https://api.mineskin.org/generate/upload"
RATE_LIMIT_DELAY     = 7.0
RATE_LIMIT_DELAY_KEY = 1.5


def slug(name: str) -> str:
    return name.replace("-", "_").replace(" ", "_").lower()


def display_name(name: str) -> str:
    return name.replace("-", " ").replace("_", " ").title()


def derive_item_id(variant: str) -> str:
    """Strip trailing _<digit> suffix and apply known remaps to get the Minecraft block ID."""
    base = re.sub(r"_\d+$", "", variant)
    return ITEM_REMAP.get(base, base)


def load_cache(cache_path: pathlib.Path) -> dict:
    if cache_path.exists():
        data = json.loads(cache_path.read_text(encoding="utf-8"))
        return {e["variant"]: e for e in data}
    return {}


def save_cache(cache_path: pathlib.Path, cache: dict):
    cache_path.parent.mkdir(parents=True, exist_ok=True)
    entries = list(cache.values())
    cache_path.write_text(json.dumps(entries, indent=2, ensure_ascii=False), encoding="utf-8")


def upload_skin(skin_path: pathlib.Path, api_key: str | None) -> tuple[str, float]:
    with open(skin_path, "rb") as f:
        skin_data = f.read()

    boundary = "----MineskinBoundary"
    body = (
        f"--{boundary}\r\n"
        f'Content-Disposition: form-data; name="file"; filename="{skin_path.name}"\r\n'
        f"Content-Type: image/png\r\n\r\n"
    ).encode() + skin_data + f"\r\n--{boundary}--\r\n".encode()

    headers = {
        "Content-Type": f"multipart/form-data; boundary={boundary}",
        "User-Agent": "jodeks-datapacks/mob-heads-generator",
    }
    if api_key:
        headers["Authorization"] = f"Bearer {api_key}"

    req = urllib.request.Request(MINESKIN_URL, data=body, headers=headers, method="POST")

    try:
        with urllib.request.urlopen(req, timeout=30) as resp:
            result = json.loads(resp.read().decode())
    except urllib.error.HTTPError as e:
        error_body = e.read().decode()
        raise RuntimeError(f"HTTP {e.code}: {error_body}")

    next_delay = float(result.get("nextRequest", result.get("delay", 6))) + 0.5

    try:
        if "texture" in result and "value" in result["texture"]:
            return result["texture"]["value"], next_delay
        elif "data" in result and "texture" in result["data"]:
            return result["data"]["texture"]["value"], next_delay
        else:
            raise RuntimeError(f"Unexpected response structure: {result}")
    except (KeyError, TypeError):
        raise RuntimeError(f"Unexpected response structure: {result}")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--api-key", default=None, help="mineskin.org API key (optional)")
    args = parser.parse_args()

    api_key = args.api_key
    delay   = RATE_LIMIT_DELAY_KEY if api_key else RATE_LIMIT_DELAY

    skins = sorted(SKINS_DIR.rglob("*.png"))
    if not skins:
        print(f"ERROR: no PNGs found under {SKINS_DIR}")
        sys.exit(1)

    cache    = load_cache(CACHE_PATH)
    skipped  = 0
    uploaded = 0
    failed   = 0

    print(f"Uploading {len(skins)} skins for sulfur_cube...")
    if not api_key:
        print("  Tip: use --api-key for faster uploads (https://mineskin.org/account)")
    print()

    for i, skin_path in enumerate(skins, 1):
        # Strip 'sulfur_cube_' prefix so variant = e.g. 'magma_block'; base skins keep full stem
        variant = slug(skin_path.stem).removeprefix(SKIN_PREFIX)

        if variant in cache:
            print(f"  [{i}/{len(skins)}] {variant} — skipped (cached)")
            skipped += 1
            continue

        try:
            texture, next_delay = upload_skin(skin_path, api_key)
            category = skin_path.parent.name if skin_path.parent != SKINS_DIR else "default"
            item_id  = derive_item_id(variant)
            cache[variant] = {
                "variant":          variant,
                "display_name":     display_name(skin_path.stem.removeprefix(SKIN_PREFIX)),
                "category":         category,
                "item_id":          item_id,
                "note_block_sound": DEFAULT_SOUND,
                "texture":          texture,
            }
            save_cache(CACHE_PATH, cache)
            print(f"  [{i}/{len(skins)}] {variant} — uploaded ✓  (next in {next_delay:.1f}s)")
            uploaded += 1
        except Exception as e:
            print(f"  [{i}/{len(skins)}] {variant} — ERROR: {e}")
            failed += 1
            next_delay = delay

        if i < len(skins):
            time.sleep(next_delay)

    print(f"\nDone. uploaded={uploaded} skipped={skipped} failed={failed}")
    print(f"Cache: {CACHE_PATH}")


if __name__ == "__main__":
    main()
