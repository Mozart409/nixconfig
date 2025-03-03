#!/bin/sh

clear

echo ""
if [[ $1 == "fmt" ]]; then
    echo "Formatting nix files..."
    treefmt || exit
fi
echo "Switching OS..."

nh home switch . || exit 1

nh os switch . || exit 1

