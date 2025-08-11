#!/bin/bash

# Permissions: chmod +x copy.sh

# Path to the git directory
DOTFILES="$HOME/Casa/Workbench/Giteando/personal/Dotfiles"
# Create the directory if not exist
mkdir -p "$DOTFILES"

# Relative location to restore system files
RELATIVE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# List of configuration files
CONFIGS=(
  ".zshrc"
  ".p10k.zsh"
  ".icons"
  ".themes"
  ".config/nvim"
  ".config/mpv"
  ".config/wezterm"
  ".config/kitty"
  ".config/fastfetch"
  ".config/MangoHud"
)

read -p "[ 1 ] Create a symlink. [ 2 ] Copy to system. [ * ] Skip: " CHOICE

case "$CHOICE" in
  1) 
  # Creating backup
  for item in "${CONFIGS[@]}"; do
    item_dir=$(dirname "$item") # Get the path
    mkdir -p "$DOTFILES/$item_dir" # Create the directory if needed
      if [ -e "$HOME/$item" ]; then
        echo "Copying $item..."
        ln -s -f "$HOME/$item" "$DOTFILES/$item_dir/"
      else
        echo "Warning: $HOME/$item does not exist, skipping..."
      fi
  done
  echo "Creation completed. Symlink from $HOME to $DOTFILES"
    ;;
  2)
  # Restoring to the system
  for item in "${CONFIGS[@]}"; do
    item_dir=$(dirname "$item") # Get the path
    mkdir -p "$HOME/$item_dir" # Create the directory if needed
      if [ -e "$RELATIVE/$item" ]; then
        echo "Copying $item..."
        cp -r "$RELATIVE/$item" "$HOME/$item_dir/"
      else
        echo "Warning: $RELATIVE/$item does not exist, skipping..."
      fi
  done
  echo "Restore operation completed. Files copied from $RELATIVE to $HOME"
    ;;
  *)
    echo "Skip or Invalid choice."
    ;;
esac
