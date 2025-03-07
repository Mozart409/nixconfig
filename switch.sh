#!/bin/sh

set -eou pipefail

clear

echo ""
if [[ $1 == "fmt" ]]; then
    echo "Formatting nix files..."
    treefmt || exit 1
fi
echo "Switching OS..."

nh home switch . || exit 1

nh os switch . || exit 1
