#!/usr/bin/env sh
set -eu

# - Build both arm64 (Apple Silicon) and x86_64 (Intel)
# - Require a minimum of macOS 13.0
BUILD_FLAGS="-arch arm64 -arch x86_64 -Os -mmacosx-version-min=13.0"
export CFLAGS="${BUILD_FLAGS}"
export LDFLAGS="${BUILD_FLAGS} -F/Applications/Nova.app/Contents/Frameworks -framework SyntaxKit -rpath @loader_path/../Frameworks"

# Build
pushd "vendor/tree-sitter-property-list" >/dev/null
make clean
make libtree-sitter-property_list.dylib
popd >/dev/null

# Copy artifact
cp "vendor/tree-sitter-property-list/libtree-sitter-property_list.dylib" "Xcode Project.novaextension/Syntaxes/"

# Sign
codesign --force --sign - "Xcode Project.novaextension/Syntaxes/libtree-sitter-property_list.dylib"
