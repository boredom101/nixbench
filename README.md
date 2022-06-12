# nixbench
Analyze Nix derivations

## What is this?

The goal is for this to be able to generate details about a list of derivations

## How to use:

create a file similar to `example.nix`, replacing the list of packages and the view.

## List of views:

- `directory` lists the contents of a directory of the built derivation. (You can change `listPath`)
- `size` displays the size of a directory (recursively) or file. (full derivation by default, but could be changed with `file`)
