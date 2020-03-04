#!/bin/bash
cd -- "$(dirname "$0")"
# That tells the system to use a Bourne shell interpreter,
# and then tells OSX to run this script from the current directory.
# Don't echo these commands:
set +v

# Clear any preexisting filename variables
filename=
# Ask which file type we're removing.
echo "Which file extension to remove?... type as .extension "
read filename

find . -type f -name '*$filename' -delete



