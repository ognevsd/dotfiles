#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Platform detection for VSCode config path
if [[ "$OSTYPE" == "darwin"* ]]; then
  VSCODE_DIR="$HOME/Library/Application Support/Code/User"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  VSCODE_DIR="$HOME/.config/Code/User"
fi

echo "Stowing home dotfiles..."
stow --dir="$DOTFILES_DIR" --target="$HOME" --dotfiles --restow home

echo "Stowing VSCode config..."
mkdir -p "$VSCODE_DIR"
stow --dir="$DOTFILES_DIR" --target="$VSCODE_DIR" --restow vscode

echo "All done!"
