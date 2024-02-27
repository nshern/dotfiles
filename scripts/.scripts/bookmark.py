import os
import subprocess
import sys
from pathlib import Path


def append_url_to_bookmarks(url):
    # Define the path to the bookmarks file
    path = Path("~/.config/newsboat/bookmarks.txt").expanduser()

    # Append the URL to the bookmarks file
    with open(path, "a") as file:
        file.write(url + "\n")
    print(f"URL '{url}' has been added to your bookmarks.")


if __name__ == "__main__":
    # Check if a URL was passed as a command-line argument
    if len(sys.argv) > 1:
        url = sys.argv[1]
        append_url_to_bookmarks(url)
    else:
        command = ["nvim", "~/.config/newsboat/bookmarks.txt"]
        command[1] = os.path.expanduser(command[1])
        subprocess.run(command)
