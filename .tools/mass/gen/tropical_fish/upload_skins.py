"""
02_upload_skins.py
Uploads skin PNGs to mineskin.org and saves texture values to a cache JSON.

Usage:
  python 02_upload_skins.py <FishType> [--api-key YOUR_KEY]
  python 02_upload_skins.py Betty
  python 02_upload_skins.py Betty --api-key abc123

Input:  .tools/mass/skins/<FishType>/<Color-Pattern>.png
Output: .tools/mass/output/head_data/<fish_type>.json

Resume-safe: already uploaded variants are skipped.
Rate limit: ~1 req/s anonymous, faster with API key (get one at https://mineskin.org/account).
"""

import sys
import json
import time
import pathlib
import argparse
import urllib.request
import urllib.error

SCRIPT_DIR = pathlib.Path(__file__).parent
SKINS_DIR  = SCRIPT_DIR / "skins"
OUTPUT_DIR = SCRIPT_DIR / "output" / "head_data"

MINESKIN_URL = "https://api.mineskin.org/generate/upload"
RATE_LIMIT_DELAY = 7.0   # fallback seconds between requests (anonymous)
RATE_LIMIT_DELAY_KEY = 1.5  # fallback with API key


def slug(name: str) -> str:
    return name.replace("-", "_").replace(" ", "_").lower()


def display_name(name: str) -> str:
    """'Black-Yellow' → 'Black Yellow'"""
    return name.replace("-", " ").replace("_", " ").title()


def load_cache(cache_path: pathlib.Path) -> dict:
    """Load existing cache as {variant: entry}."""
    if cache_path.exists():
        data = json.loads(cache_path.read_text(encoding="utf-8"))
        return {e["variant"]: e for e in data}
    return {}


def save_cache(cache_path: pathlib.Path, cache: dict):
    cache_path.parent.mkdir(parents=True, exist_ok=True)
    entries = list(cache.values())
    cache_path.write_text(json.dumps(entries, indent=2, ensure_ascii=False), encoding="utf-8")


def upload_skin(skin_path: pathlib.Path, api_key: str | None) -> tuple[str, float]:
    """Upload a skin PNG to mineskin.org.
    Returns (texture_value, next_delay_seconds).
    """
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

    # Dynamic delay: mineskin tells us exactly when to send next request
    next_delay = float(result.get("nextRequest", result.get("delay", 6))) + 0.5

    # v1 API: result.texture.value
    # v2 API: result.data.texture.value
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
    parser.add_argument("fish_type", help="Fish type folder name, e.g. Betty")
    parser.add_argument("--api-key", default=None, help="mineskin.org API key (optional)")
    args = parser.parse_args()

    fish_type = args.fish_type
    api_key   = args.api_key
    delay     = RATE_LIMIT_DELAY_KEY if api_key else RATE_LIMIT_DELAY

    skin_dir = SKINS_DIR / fish_type
    if not skin_dir.exists():
        print(f"ERROR: {skin_dir} not found")
        sys.exit(1)

    skins = sorted(skin_dir.glob("*.png"))
    if not skins:
        print(f"ERROR: no PNGs in {skin_dir}")
        sys.exit(1)

    ft_slug    = slug(fish_type)
    cache_path = OUTPUT_DIR / f"{ft_slug}.json"
    cache      = load_cache(cache_path)

    skipped  = 0
    uploaded = 0
    failed   = 0

    print(f"Uploading {len(skins)} skins for '{fish_type}'...")
    if not api_key:
        print("  Tip: use --api-key for faster uploads (https://mineskin.org/account)")
    print()

    for i, skin_path in enumerate(skins, 1):
        variant = slug(skin_path.stem)

        if variant in cache:
            print(f"  [{i}/{len(skins)}] {variant} — skipped (cached)")
            skipped += 1
            continue

        try:
            texture, next_delay = upload_skin(skin_path, api_key)
            cache[variant] = {
                "variant":      variant,
                "display_name": display_name(skin_path.stem),
                "texture":      texture,
            }
            save_cache(cache_path, cache)
            print(f"  [{i}/{len(skins)}] {variant} — uploaded ✓  (next in {next_delay:.1f}s)")
            uploaded += 1
        except Exception as e:
            print(f"  [{i}/{len(skins)}] {variant} — ERROR: {e}")
            failed += 1
            next_delay = delay  # fallback on error

        if i < len(skins):
            time.sleep(next_delay)

    print(f"\nDone. uploaded={uploaded} skipped={skipped} failed={failed}")
    print(f"Cache: {cache_path}")


if __name__ == "__main__":
    main()