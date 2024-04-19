#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

ln -s "$SCRIPT_DIR/fish" ~/.config
ln -s "$SCRIPT_DIR/kitty" ~/.config
ln -s "$SCRIPT_DIR/nvim" ~/.config
ln -s "$SCRIPT_DIR/zellij" ~/.config

echo "Symlinked successfully"
