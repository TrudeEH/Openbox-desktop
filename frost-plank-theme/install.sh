#!/usr/bin/env bash

echo "Copying plank theme..."
mkdir -p "$HOME"/.local/share/plank/themes 2> /dev/null
yes | cp -Ri Frost "$HOME"/.local/share/plank/themes
echo "Done"
