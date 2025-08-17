#!/bin/bash

BASHRC="$HOME/.bashrc"
SETUP_URL="https://raw.githubusercontent.com/avezoor/wnow/refs/heads/main/setup"

command -v curl >/dev/null 2>&1 || sudo apt-get update -qq >/dev/null && sudo apt-get install -y -qq curl >/dev/null
command -v gnome-text-editor >/dev/null 2>&1 || sudo apt-get update -qq >/dev/null && sudo apt-get install -y -qq gnome-text-editor >/dev/null

TMP_SETUP=$(mktemp)
curl -fsSL "$SETUP_URL" -o "$TMP_SETUP"

sed -i '/# Wnow Setup Start/,/# Wnow Setup End/d' "$BASHRC"

echo -e "\n# [DO NOT DELETE THIS WNOW COMMENT]" >> "$BASHRC"
cat "$TMP_SETUP" >> "$BASHRC"
echo -e "# [DO NOT DELETE THIS WNOW COMMENT]\n" >> "$BASHRC"

rm "$TMP_SETUP"

source "$BASHRC"

echo -e "\e[32m[Wnow Command]\e[0m Wnow setup updated in .bashrc"
