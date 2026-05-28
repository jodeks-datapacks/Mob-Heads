import math
import os
from itertools import groupby
from pathlib import Path

COLS = 4
BASE_URL = "https://cdn.jsdelivr.net/gh/jodeks-datapacks/Assets@main"
HEADS_URL = f"{BASE_URL}/projects/mob_heads/heads/tropical_fish"
BADGE_URL = f"{BASE_URL}/badges/Noteblock.png"
SOUND_URL = "https://minecraft.wiki/w/File:Fish_flop4.ogg"
DROP_RATE = "5%"

RENDERS_DIR = Path(__file__).parent / "mass/skins"
OUTPUT_DIR = Path(__file__).parent / "generated/tropical_fish"

# Minecraft dye colors — order matters for prefix matching (longer names first)
COLORS = [
    "light_blue", "light_gray",
    "black", "blue", "brown", "cyan", "gray", "green",
    "lime", "magenta", "orange", "pink", "purple",
    "red", "white", "yellow",
]


def parse_colors(stem: str) -> tuple[str, str]:
    """Split e.g. 'light_blue_black' into ('light_blue', 'black')."""
    for color in COLORS:
        if stem.startswith(color + "_"):
            remainder = stem[len(color) + 1:]
            return color, remainder
        if stem == color:
            return color, ""
    # Fallback: split on first underscore
    parts = stem.split("_", 1)
    return parts[0], parts[1] if len(parts) > 1 else ""


def color_display(color: str) -> str:
    return color.replace("_", " ").title()


def parse_entry(species: str, filename: str) -> dict:
    stem = Path(filename).stem
    color1, color2 = parse_colors(stem)
    name_parts = [color_display(color1)]
    if color2:
        name_parts.append(color_display(color2))
    name_parts.append(species.capitalize())
    return {
        "species": species,
        "color1": color1,
        "color2": color2,
        "name": " ".join(name_parts),
        "image": f"{species}/{stem}",
        "stem": stem,
    }


def build_table(items: list) -> str:
    rows = []
    for i in range(0, len(items), COLS):
        chunk = items[i:i + COLS]
        cells = []
        for h in chunk:
            cells.append(f"""    <td align="center">
              <img src="{HEADS_URL}/{h['image']}.png" width="48"><br>
              <b>{h['name']}</b><br>Drop Rate: {DROP_RATE}<br>
              <a href="{SOUND_URL}" target="_blank"><img src="{BADGE_URL}"></a>
          </td>""")
        rows.append("  <tr>\n" + "\n".join(cells) + "\n  </tr>")
    return '<table>\n' + "\n".join(rows) + "\n</table>"


def build_species_page(species: str, items: list) -> str:
    items_sorted = sorted(items, key=lambda e: (e["color1"], e["color2"]))
    output = [f"# {species.capitalize()}"]

    for color1, color_group in groupby(items_sorted, key=lambda e: e["color1"]):
        output.append(f"## {color_display(color1)}")
        output.append(build_table(list(color_group)))

    return "\n\n".join(output)


def build_index_page(species_list: list[str], counts: dict) -> str:
    output = ["# Tropical Fish Heads", ""]
    for species in sorted(species_list):
        page_name = f"Tropical-Fish-{species.capitalize()}"
        output.append(f"- [{species.capitalize()}]({page_name}) ({counts[species]} heads)")
    return "\n".join(output)


# --- Main ---

OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

all_entries = []

for species_dir in sorted(RENDERS_DIR.iterdir()):
    if not species_dir.is_dir():
        continue
    species = species_dir.name
    species = species.lower()
    for png in sorted(species_dir.glob("*.png")):
        all_entries.append(parse_entry(species, png.name))

# Group by species
species_groups = {}
for entry in all_entries:
    species_groups.setdefault(entry["species"], []).append(entry)

counts = {s: len(items) for s, items in species_groups.items()}
total = len(all_entries)

# Write one page per species
for species, items in species_groups.items():
    page = build_species_page(species, items)
    out_path = OUTPUT_DIR / f"Tropical-Fish-{species.capitalize()}.md"
    out_path.write_text(page, encoding="utf-8")
    print(f"  ✓ {species.capitalize()} ({counts[species]} heads)")

# Write index page
index = build_index_page(list(species_groups.keys()), counts)
index_path = OUTPUT_DIR / "Tropical-Fish.md"
index_path.write_text(index, encoding="utf-8")

print(f"\n✓ Done — {total} heads across {len(species_groups)} species")
print(f"  Output: {OUTPUT_DIR}")