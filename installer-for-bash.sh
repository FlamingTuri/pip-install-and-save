#!/bin/bash

# gets the absolute path to the directory containing this script
DIR="$(dirname "$(readlink -f "$0")")"

SCRIPT="$DIR/pip-install-and-save.sh"

if [ -f "$SCRIPT" ]; then
    # adds to .bashrc
    # # pip install and save
    # if [ -f "$SCRIPT" ]; then
    #     source "$SCRIPT"
    # fi
    printf '\n%s\n%s\n%s\n%s\n' \
        "# pip install and save" \
        "if [ -f \"$SCRIPT\" ]; then" \
        "    source \"$SCRIPT\"" \
        'fi' \
        >> "$HOME/.bashrc"
fi
