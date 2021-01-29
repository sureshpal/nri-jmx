#!/bin/bash
set -e
#
#
# Gets dist/zip_dirty created by Goreleaser and reorganize inside files
#
#
INTEGRATION=$1
ARCH=$2
TAG=$3

gh release upload "$TAG" "build/package/windows/nri-${ARCH}-installer/bin/Release/nri-${INTEGRATION}-nodeps-${ARCH}.${TAG/v/}.msi" --repo "$REPO_FULL_NAME"
gh release upload "$TAG" "build/package/windows/bundle/bin/Release/nri-${INTEGRATION}-${ARCH}.${TAG/v/}.exe" --repo "$REPO_FULL_NAME"
