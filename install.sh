#!/bin/bash

BASHRC="$HOME/.bashrc"
SETUP_URL="https://raw.githubusercontent.com/avezoor/wnow/refs/heads/main/setup"

if grep -q "# Wnow Setup Start" "$BASHRC"; then
    echo -e "\e[32m[Wnow Command]\e[0m Wnow setup already exists in .bashrc, no changes made."
else
    TMP_SETUP=$(mktemp)
    curl -fsSL "$SETUP_URL" -o "$TMP_SETUP"

    echo -e "\n# Wnow Setup Start" >> "$BASHRC"
    cat "$TMP_SETUP" >> "$BASHRC"
    echo -e "# Wnow Setup End\n" >> "$BASHRC"

    rm "$TMP_SETUP"

    source "$BASHRC"

    echo -e "\e[32m[Wnow Command]\e[0m Wnow setup successfully added to .bashrc"
fi
