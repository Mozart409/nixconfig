#!/bin/sh

set -eou pipefail

clear

echo ""
echo "Switching OS..."

nh home switch . || exit 1

nh os switch . || exit 1
