# Xcode Project

Extension for [Nova]() to add language support for Xcode project files (`.pbxproj`).

See the [extension README](Xcode%20Project.novaextension/README.md) for details.

## Building

The extension includes a binary of the []() grammar built as a universal binary for macOS 11.0+.

To rebuild:

```sh
$ git clone https://github.com/zwaldowski/tree-sitter-property-list
$ cd tree-sitter-property-list
$ make clean
$ env CFLAGS='-arch arm64 -arch x86_64 -Os -mmacosx-version-min=11.0' LDFLAGS='-arch arm64 -arch x86_64 -Os -mmacosx-version-min=11.0' make
```
