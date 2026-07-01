"""
gen_dialog.py
Standalone script to regenerate the sulfur_cube dialog JSON from the head_data cache.

Usage:
  python gen_dialog.py

Input:  output/head_data/sulfur_cube.json
Output: output/generated/get_mob_head/sulfur_cube/dialog.json
"""

import sys
import json
import pathlib

SCRIPT_DIR = pathlib.Path(__file__).parent
DATA_DIR   = SCRIPT_DIR / "output" / "head_data"
CACHE_PATH = DATA_DIR / "sulfur_cube.json"


def main():
    if not CACHE_PATH.exists():
        print(f"ERROR: {CACHE_PATH} not found — run upload_skins.py first")
        sys.exit(1)

    entries = json.loads(CACHE_PATH.read_text(encoding="utf-8"))
    print(f"Building dialog for 'sulfur_cube' ({len(entries)} variants)...")

    from gen_mcfunctions import gen_dialog, write_mcfunctions
    from _constants import OUTPUT_ROOT, SCRIPT_DIR as SD, write

    out_path = OUTPUT_ROOT / "get_mob_head" / "sulfur_cube" / "dialog.json"
    write(out_path, gen_dialog(entries))
    print("\nDone.")


if __name__ == "__main__":
    main()
