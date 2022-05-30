let
  pkgs = import <nixpkgs> {};
  view = pkgs.callPackage ./views/directory {listPath = "lib";};
in
(pkgs.callPackage ./bench.nix {} {derivations = [pkgs.git pkgs.arduino-core-unwrapped]; view = view;})
