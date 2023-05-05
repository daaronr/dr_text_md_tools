import os
import sys
from textwrap import shorten
from getkey import getkey  # cross-platform module for getting single keypresses

directory = sys.argv[1]

def process_file(file_path):
    with open(file_path, "r+") as f:
        lines = f.readlines()
        modified = False
        for i, line in enumerate(lines):
            if line.startswith("#") and not line.startswith("# "):
                lines[i] = "# " + line[1:]
                modified = True

        if modified:
            folder_name = os.path.basename(os.path.dirname(file_path))
            containing_folder_name = os.path.basename(os.path.dirname(os.path.dirname(file_path)))
            backlinks = f"\n\n## Backlinks\n\n- [{folder_name}]({folder_name})\n- [{containing_folder_name}]({containing_folder_name})"
            first_ten_lines = "".join(shorten(line, width=80) for line in lines[:10])
            headers = [line.strip() for line in lines if line.startswith("# ")]
            header_lines = "\n\n".join(headers)
            print(f"File: {file_path}\n{first_ten_lines}\n{header_lines}\n\nSuggested backlinks: {backlinks}")
            while True:
                print("[N] no, [A] all, [F] first only, [T] type backlink, or [Q] quit")
                choice = getkey().lower()
                if choice == "n":
                    break
                elif choice == "a":
                    f.seek(0, 2)
                    f.write(backlinks)
                    print("Backlinks added.")
                    break
                elif choice == "f":
                    f.seek(0, 2)
                    f.write(backlinks)
                    print("First backlink added.")
                    break
                elif choice == "t":
                    print("Type the backlink name:")
                    backlink_name = input()
                    typed_backlinks = f"\n\n## Backlinks\n\n- [{backlink_name}]({backlink_name})"
                    f.seek(0, 2)
                    f.write(typed_backlinks)
                    print("Typed backlink added.")
                    break
                elif choice == "q":
                    exit()
                else:
                    print("Invalid choice.")

def process_directory(directory):
    for entry in os.scandir(directory):
        if entry.is_file() and entry.name.endswith(".md") or entry.name.endswith(".Rmd") or entry.name.endswith(".qmd"):
            process_file(entry.path)
        elif entry.is_dir():
            print(f"Processing directory {entry.path}")
            process_directory(entry.path)

process_directory(directory)

