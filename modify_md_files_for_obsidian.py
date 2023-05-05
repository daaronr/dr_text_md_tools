import os
import sys
import re
import chardet

# Get the directory containing the files you want to modify
if len(sys.argv) < 2:
    print("Please provide the directory path as an argument.")
    sys.exit()

directory = sys.argv[1]

# Prompt for whether to add a space to all headers in a file
all_headers_choice = None
while all_headers_choice not in ["y", "n", "s", "a", "q"]:
    all_headers_choice = input("[Y]es, [N]o, [S]kip to next file, add [A]ll headers, or [Q]uit? ").lower()

# Iterate over all files in the directory and its subdirectories recursively
for root, _, files in os.walk(directory):
    for filename in files:
        if filename.endswith((".md", ".qmd", ".Rmd")):
            filepath = os.path.join(root, filename)
            print(f"Processing file: {filepath}")
            try:
                # Detect the file's encoding
                with open(filepath, "rb") as file:
                    encoding = chardet.detect(file.read())["encoding"]

                with open(filepath, "r", encoding=encoding) as file:
                    # Read the entire file into memory
                    content = file.read()

                    # Split the content into lines
                    lines = content.split("\n")

                    # Modify lines starting with "#" without a space, unless we are in a code block
                    in_code_block = False
                    for i, line in enumerate(lines):
                        if line.startswith("```") or line.startswith("~~~"):
                            in_code_block = not in_code_block
                        if not in_code_block and re.match(r'^#+[^ #].*$', line) and not re.match(r'^#+[^ #][\W_].*$', line):
                            print(f"Original line {i+1}: {line}")
                            if all_headers_choice == "a":
                                lines[i] = re.sub(r'^(#+)([^ #\n])', r'\1 \2', line)
                            elif all_headers_choice != "y":
                                choice = None
                                while choice not in ["y", "n", "s", "a", "q"]:
                                    choice = input("[Y]es, [N]o, [S]kip to next file, add [A]ll headers, or [Q]uit? ").lower()
                                if choice == "y":
                                    lines[i] = re.sub(r'^(#+)([^ #\n])', r'\1 \2', line)
                                elif choice == "a":
                                    all_headers_choice = "y"
                                    lines[i] = re.sub(r'^(#+)([^ #\n])', r'\1 \2', line)
                                elif choice == "s":
                                    break
                                elif choice == "q":
                                    sys.exit()

                    # If all_headers_choice is set, add a space to all headers in the file
                    if all_headers_choice == "y":
                        lines = [re.sub(r'^(#+)([^ #\n])', r'\1 \2', line) if re.match(r'^#+[^ #].*$', line) and not re.match(r'^#+[^ #][\W_].*$', line) else line for line in lines]


                # Reset all_headers
                with open(filepath, "w", encoding=encoding) as file:
                    # Join the modified lines back into content
                    content = "\n".join(lines)

                    # Write the modified content back to the file
                    file.write(content)

                # Reset all_headers_choice for the next file
                if all_headers_choice != "q":
                    all_headers_choice = None

            except UnicodeDecodeError:
                print(f"Cannot decode file {filepath} as {encoding}, skipping...")

            except Exception as e:
                print(f"An error occurred while processing file {filepath}: {e}")

