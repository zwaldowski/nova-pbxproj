# Xcode Project

Extension for [Nova](https://nova.app) to add language support for Xcode project files (`.pbxproj`).

See the [extension README](Xcode%20Project.novaextension/README.md) for details.

## Building

The extension includes a binary of the [`tree-sitter-property-list`](https://github.com/formkunft/tree-sitter-property-list) grammar built as a universal binary for macOS 11.0+.

To rebuild:

```sh
$ ./bin/rebuild-grammar.sh
```
