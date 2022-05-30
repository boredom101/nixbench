{ stdenv }:
{ derivations, view }:

builtins.map ( derivation:
  stdenv.mkDerivation {
    name = "${derivation.name}-${view.name}-bench";
    src = derivation.outPath;
    buildPhase = ''
      ${view}/build
    '';
    installPhase = ''
      mkdir -p $out
      mv view $out
    '';
  }) derivations
