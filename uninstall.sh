#!/bin/bash
set -e

INSTALL_DIR="$HOME/.local/bin"
SCRIPT_NAME="cosmic-webapp"

rm -f "$INSTALL_DIR/$SCRIPT_NAME"
echo "cosmic-webapp uninstalled."

# Optionally remove webapp data
if [ -d "$HOME/.local/share/chromium-webapps" ]; then
    read -rp "Remove all webapp browser profiles? [y/N] " answer
    if [[ "$answer" =~ ^[Yy]$ ]]; then
        rm -rf "$HOME/.local/share/chromium-webapps"
        echo "Browser profiles removed."
    fi
fi
