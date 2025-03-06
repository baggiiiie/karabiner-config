#!/bin/bash

# Define the target and symlink name
TARGET="$(pwd)/karabiner"
SYMLINK="$HOME/.config/karabiner"

# Check if the symlink or directory exists
if [ -e "$SYMLINK" ]; then
    echo "$SYMLINK already exists. Exiting."
    exit 0
fi

# Create the symlink
ln -s "$TARGET" "$SYMLINK"
echo "Created symlink: $SYMLINK -> $TARGET"

