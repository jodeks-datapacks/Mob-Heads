import json, math

COLS = 5
BASE_URL = "https://cdn.jsdelivr.net/gh/jodeks-datapacks/Assets@main"
HEADS_URL = f"{BASE_URL}/projects/mob_heads/heads"
BADGE_URL = f"{BASE_URL}/badges/Noteblock.png"

with open(".tools/heads_table_data.json") as f:
    heads = json.load(f)

rows = []
for i in range(0, len(heads), COLS):
    chunk = heads[i:i+COLS]
    cells = []
    for h in chunk:
          sound_url = h.get("sound")
          cells.append(f"""    <td align="center">
              <img src="{HEADS_URL}/{h['image']}.webp" width="48"><br>
              <b>{h['name']}</b><br>Drop Rate: {h['drop_rate']}<br>
              <a href="{sound_url}" target="_blank"><img src="{BADGE_URL}"></a>
          </td>""")
    rows.append("  <tr>\n" + "\n".join(cells) + "\n  </tr>")

table = '<table align="center">\n' + "\n".join(rows) + "\n</table>"

with open(".tools/generated/heads_table.md", "r", encoding="utf-8") as f:
    readme = f.read()

start = "<!-- HEADS_TABLE_START -->"
end = "<!-- HEADS_TABLE_END -->"
new_readme = readme[:readme.index(start) + len(start)] + "\n" + table + "\n" + readme[readme.index(end):]

with open(".tools/generated/heads_table.md", "w", encoding="utf-8") as f:
    f.write(new_readme)

print(f"✓ Generated table ({len(heads)} heads, {math.ceil(len(heads)/COLS)} rows)")