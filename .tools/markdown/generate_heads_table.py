import json, math
from itertools import groupby

COLS = 5
BASE_URL = "https://cdn.jsdelivr.net/gh/jodeks-datapacks/Assets@main"
HEADS_URL = f"{BASE_URL}/projects/mob_heads/heads"
BADGE_URL = f"{BASE_URL}/badges/Noteblock.png"

with open(".tools/heads_table_data.json") as f:
    heads = json.load(f)

heads_sorted = sorted(heads, key=lambda h: (
    h["category"],
    h["sub_category"] != "",
    h["sub_category"],
    h["name"]
))


def build_table(items: list) -> str:
    rows = []
    for i in range(0, len(items), COLS):
        chunk = items[i:i + COLS]
        cells = []
        for h in chunk:
            sound_url = h.get("sound")
            cells.append(f"""    <td align="center">
              <img src="{HEADS_URL}/{h['image']}.webp" width="48"><br>
              <b>{h['name']}</b><br>Drop Rate: {h['drop_rate']}<br>
              <a href="{sound_url}" target="_blank"><img src="{BADGE_URL}"></a>
          </td>""")
        rows.append("  <tr>\n" + "\n".join(cells) + "\n  </tr>")
    return '<table>\n' + "\n".join(rows) + "\n</table>"


output = []

for category, cat_group in groupby(heads_sorted, key=lambda h: h["category"]):
    output.append(f"## {category}")

    cat_items = list(cat_group)

    main = [h for h in cat_items if not h["sub_category"]]
    if main:
        output.append(build_table(main))

    sub_items = [h for h in cat_items if h["sub_category"]]
    for sub, sub_group in groupby(sub_items, key=lambda h: h["sub_category"]):
        output.append(f"### {sub}")
        output.append(build_table(list(sub_group)))

table_block = "\n\n".join(output)

with open(".tools/generated/heads_table.md", "r", encoding="utf-8") as f:
    readme = f.read()

start = "<!-- HEADS_TABLE_START -->"
end = "<!-- HEADS_TABLE_END -->"
new_readme = (
    readme[:readme.index(start) + len(start)]
    + "\n"
    + table_block
    + "\n"
    + readme[readme.index(end):]
)

with open(".tools/generated/heads_table.md", "w", encoding="utf-8") as f:
    f.write(new_readme)

total = len(heads)
print(f"✓ Generated table ({total} heads, {math.ceil(total / COLS)} rows)")