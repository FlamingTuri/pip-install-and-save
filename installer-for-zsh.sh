#!/bin/bash

# gets the absolute path to the directory containing this script
DIR="$(dirname "$(readlink -f "$0")")"

SCRIPT="$DIR/pip-install-and-save.sh"

if [ -f "$SCRIPT" ]; then
    # adds to .zshrc
    # # pip install and save
    # autoload bashcompinit && bashcompinit
    # emulate sh -c '. "$SCRIPT"'
    printf '\n%s\n%s\n%s\n%s\n%s\n' \
        "# pip install and save" \
        "if [ -f \"$SCRIPT\" ]; then" \
        '  autoload bashcompinit && bashcompinit' \
        "  emulate sh -c '. \"$SCRIPT\"'" \
        'fi' \
        >> "$HOME/.zshrc"
fi
