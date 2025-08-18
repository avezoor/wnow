#!/bin/bash

WNOWRC="$HOME/.wnowrc"
SETUP_URL="https://raw.githubusercontent.com/avezoor/wnow/main/setup"

command -v curl >/dev/null 2>&1 || { sudo apt-get update -qq >/dev/null && sudo apt-get install -y -qq curl >/dev/null; }
command -v gnome-text-editor >/dev/null 2>&1 || { sudo apt-get update -qq >/dev/null && sudo apt-get install -y -qq gnome-text-editor >/dev/null; }

[ -f "$WNOWRC" ] && cp "$WNOWRC" "${WNOWRC}.bak"

TMP_SETUP=$(mktemp)
curl -fsSL "$SETUP_URL" -o "$TMP_SETUP"

sed -i '/#\[DO NOT DELETE\]/,/#\[DO NOT DELETE\]/d' "$WNOWRC" 2>/dev/null

echo -e "\n#[DO NOT DELETE]" >> "$WNOWRC"
cat "$TMP_SETUP" >> "$WNOWRC"
echo -e "#\[DO NOT DELETE]\n" >> "$WNOWRC"

rm "$TMP_SETUP"

source "$WNOWRC" 2>/dev/null

if ! grep -Fxq "source \$HOME/.wnowrc" "$HOME/.bashrc"; then
    echo "source \$HOME/.wnowrc" >> "$HOME/.bashrc"
fi

echo -e "\e[32m[ Message ] \e[0m Wnow setup updated in .wnowrc and will auto-load in new terminals"
