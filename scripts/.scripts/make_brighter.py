def make_brighter(hex_color, factor):
    # Ensure the hex color is properly formatted
    hex_color = hex_color.strip("#")

    # Split the hex color into its components
    r, g, b = int(hex_color[0:2], 16), int(hex_color[2:4], 16), int(hex_color[4:6], 16)

    # Increase each component by 10%, ensuring it doesn't exceed 255
    r, g, b = [min(int(component * factor), 255) for component in (r, g, b)]

    # Convert each component back to hex and reassemble the color
    brighter_hex = "#{:02x}{:02x}{:02x}".format(r, g, b)

    return brighter_hex


nvim_colors = {
    "NvimDarkBlue": "#004c73",
    "NvimDarkCyan": "#007373",
    "NvimDarkGreen": "#005523",
    "NvimDarkGrey1": "#07080d",
    "NvimDarkGrey2": "#14161b",
    "NvimDarkGrey3": "#2c2e33",
    "NvimDarkGrey4": "#4f5258",
    "NvimDarkMagenta": "#470045",
    "NvimDarkRed": "#590008",
    "NvimDarkYellow": "#6b5300",
    "NvimLightBlue": "#a6dbff",
    "NvimLightCyan": "#8cf8f7",
    "NvimLightGreen": "#b3f6c0",
    "NvimLightGrey1": "#eef1f8",
    "NvimLightGrey2": "#e0e2ea",
    "NvimLightGrey3": "#c4c6cd",
    "NvimLightGrey4": "#9b9ea4",
    "NvimLightMagenta": "#ffcaff",
    "NvimLightRed": "#ffc0b9",
    "NvimLightYellow": "#fce094",
}
ten = {
    "NvimDarkBlue": "#00537e",
    "NvimDarkCyan": "#007e7e",
    "NvimDarkGreen": "#005d26",
    "NvimDarkGrey1": "#07080e",
    "NvimDarkGrey2": "#16181d",
    "NvimDarkGrey3": "#303238",
    "NvimDarkGrey4": "#565a60",
    "NvimDarkMagenta": "#4e004b",
    "NvimDarkRed": "#610008",
    "NvimDarkYellow": "#755b00",
    "NvimLightBlue": "#b6f0ff",
    "NvimLightCyan": "#9affff",
    "NvimLightGreen": "#c4ffd3",
    "NvimLightGrey1": "#ffffff",
    "NvimLightGrey2": "#f6f8ff",
    "NvimLightGrey3": "#d7d9e1",
    "NvimLightGrey4": "#aaadb4",
    "NvimLightMagenta": "#ffdeff",
    "NvimLightRed": "#ffd3cb",
    "NvimLightYellow": "#fff6a2",
}

twenty = {
    "NvimDarkBlue": "#005b8a",
    "NvimDarkCyan": "#008a8a",
    "NvimDarkGreen": "#00662a",
    "NvimDarkGrey1": "#08090f",
    "NvimDarkGrey2": "#181a20",
    "NvimDarkGrey3": "#34373d",
    "NvimDarkGrey4": "#5e6269",
    "NvimDarkMagenta": "#550052",
    "NvimDarkRed": "#6a0009",
    "NvimDarkYellow": "#806300",
    "NvimLightBlue": "#c7ffff",
    "NvimLightCyan": "#a8ffff",
    "NvimLightGreen": "#d6ffe6",
    "NvimLightGrey1": "#ffffff",
    "NvimLightGrey2": "#ffffff",
    "NvimLightGrey3": "#ebedf6",
    "NvimLightGrey4": "#babdc4",
    "NvimLightMagenta": "#fff2ff",
    "NvimLightRed": "#ffe6de",
    "NvimLightYellow": "#ffffb1",
}
res = {}
factor = 1.2
for k, v in nvim_colors.items():
    res[k] = make_brighter(v, factor)

for i, v in res.items():
    print(f"'{i}': '{v}',")
