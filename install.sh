#!/bin/bash
set -e

INSTALL_DIR="$HOME/.local/bin"
SCRIPT_NAME="cosmic-webapp"

# Ensure install directory exists and is in PATH
mkdir -p "$INSTALL_DIR"
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    echo "Warning: $INSTALL_DIR is not in your PATH"
    echo "Add this to your shell config: export PATH=\"\$HOME/.local/bin:\$PATH\""
fi

# Install
cp "$SCRIPT_NAME" "$INSTALL_DIR/$SCRIPT_NAME"
chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

echo "cosmic-webapp installed to $INSTALL_DIR/$SCRIPT_NAME"
echo "Run 'cosmic-webapp' to start."
