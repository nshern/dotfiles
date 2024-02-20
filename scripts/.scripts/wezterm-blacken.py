from pathlib import Path

config_path = Path("~/.config/wezterm/wezterm.lua").expanduser()


with open(config_path) as f:
    config = f.read()

lines = config.split("\n")

new_config = []

for line in lines:
    if "config.color_scheme" in line:
        if "Catppuccin" in line:
            new_config.append('config.color_scheme = "Batppuccin" ')
        else:
            new_config.append('config.color_scheme = "Catppuccin" ')
    else:
        new_config.append(line)


new_config = "\n".join(new_config)

with open(config_path, "w") as f:
    f.write(new_config)
