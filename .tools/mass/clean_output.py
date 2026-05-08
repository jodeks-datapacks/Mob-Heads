"""
clean_output.py
Deletes output folders selectively or all at once.

Usage:
  python clean_output.py --all
  python clean_output.py --renders
  python clean_output.py --head-data
  python clean_output.py --generated
  python clean_output.py --fish Betty
  python clean_output.py --fish Betty --renders --generated
  python clean_output.py --list
"""

import sys
import shutil
import argparse
import pathlib

SCRIPT_DIR  = pathlib.Path(__file__).parent
OUTPUT_ROOT = SCRIPT_DIR / "output"

DIRS = {
    "renders":   OUTPUT_ROOT / "renders",
    "head_data": OUTPUT_ROOT / "head_data",
    "generated": OUTPUT_ROOT / "generated",
}


def confirm(msg: str) -> bool:
    answer = input(f"{msg} [y/N] ").strip().lower()
    return answer == "y"


def delete(path: pathlib.Path, dry_run: bool = False):
    if not path.exists():
        print(f"  skip   {path.relative_to(SCRIPT_DIR)} (not found)")
        return
    if dry_run:
        print(f"  would delete {path.relative_to(SCRIPT_DIR)}")
        return
    shutil.rmtree(path)
    print(f"  deleted {path.relative_to(SCRIPT_DIR)}")


def list_contents():
    if not OUTPUT_ROOT.exists():
        print("output/ does not exist yet.")
        return
    print(f"output/")
    for key, dir_path in DIRS.items():
        if not dir_path.exists():
            print(f"  {key}/  (empty)")
            continue
        subdirs = sorted([p for p in dir_path.iterdir() if p.is_dir()])
        files   = sorted([p for p in dir_path.iterdir() if p.is_file()])
        count   = sum(1 for _ in dir_path.rglob("*") if _.is_file())
        print(f"  {key}/  ({count} files)")
        for s in subdirs:
            sub_count = sum(1 for _ in s.rglob("*") if _.is_file())
            print(f"    {s.name}/  ({sub_count} files)")
        for f in files:
            print(f"    {f.name}")


def main():
    parser = argparse.ArgumentParser(description="Clean mass/ output folders.")
    parser.add_argument("--all",        action="store_true", help="Delete everything in output/")
    parser.add_argument("--renders",    action="store_true", help="Delete output/renders/")
    parser.add_argument("--head-data",  action="store_true", help="Delete output/head_data/")
    parser.add_argument("--generated",  action="store_true", help="Delete output/generated/")
    parser.add_argument("--fish",       metavar="NAME",      help="Limit deletion to a specific fish type (e.g. Betty)")
    parser.add_argument("--list",       action="store_true", help="List current output contents")
    parser.add_argument("--yes",        action="store_true", help="Skip confirmation prompt")
    args = parser.parse_args()

    if args.list:
        list_contents()
        return

    if not any([args.all, args.renders, args.head_data, args.generated]):
        parser.print_help()
        return

    fish = args.fish.replace("-", "_").replace(" ", "_").lower() if args.fish else None

    # Build list of paths to delete
    targets: list[pathlib.Path] = []

    if args.all and not fish:
        targets.append(OUTPUT_ROOT)
    else:
        selected = []
        if args.all:
            selected = list(DIRS.keys())
        else:
            if args.renders:   selected.append("renders")
            if args.head_data: selected.append("head_data")
            if args.generated: selected.append("generated")

        for key in selected:
            base = DIRS[key]
            if fish:
                # renders and generated use subdirs per fish type
                if key == "head_data":
                    targets.append(base / f"{fish}.json")
                else:
                    targets.append(base / fish)
                    # generated has nested structure: renders/betty, generated/*/betty/
                    if key == "generated":
                        # collect all subdirs that contain a betty/ subfolder
                        targets.clear()
                        for subdir in base.iterdir() if base.exists() else []:
                            if subdir.is_dir():
                                fish_subdir = subdir / fish
                                if fish_subdir.exists():
                                    targets.append(fish_subdir)
                        if key == "head_data":
                            targets.append(base / f"{fish}.json")
                        targets.append(DIRS["renders"] / fish if "renders" in selected else None)
                        targets = [t for t in targets if t is not None]
            else:
                targets.append(base)

    # Deduplicate and filter None
    seen = set()
    unique_targets = []
    for t in targets:
        if t and t not in seen:
            seen.add(t)
            unique_targets.append(t)

    if not unique_targets:
        print("Nothing to delete.")
        return

    print("Will delete:")
    for t in unique_targets:
        rel = t.relative_to(SCRIPT_DIR) if t.is_relative_to(SCRIPT_DIR) else t
        exists = "(not found)" if not t.exists() else ""
        print(f"  {rel} {exists}")

    if not args.yes:
        if not confirm("\nProceed?"):
            print("Aborted.")
            return

    print()
    for t in unique_targets:
        if t.is_dir():
            delete(t)
        elif t.is_file():
            if t.exists():
                t.unlink()
                print(f"  deleted {t.relative_to(SCRIPT_DIR)}")
            else:
                print(f"  skip   {t.relative_to(SCRIPT_DIR)} (not found)")

    print("\nDone.")


if __name__ == "__main__":
    main()