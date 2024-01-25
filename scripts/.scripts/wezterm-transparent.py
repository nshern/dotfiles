from pathlib import Path

config_path = Path("~/.config/wezterm/wezterm.lua").expanduser()


with open(config_path) as f:
    config = f.read()

lines = config.split("\n")

new_config = []

for line in lines:
    if "background_opacity" in line:
        if line.startswith("--"):
            new_config.append("config.window_background_opacity = 0.8")
        else:
            new_config.append("-- config.window_background_opacity = 0.8")
    else:
        new_config.append(line)


new_config = "\n".join(new_config)

with open(config_path, "w") as f:
    f.write(new_config)
