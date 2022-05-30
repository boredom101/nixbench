{ stdenv, substituteAll, listPath ? "." }:
stdenv.mkDerivation {
  name = "directory-view";
  src = ./.;
  listPath = listPath;
  installPhase = ''
      mkdir -p $out
      substituteAll build $out/build
      chmod +x $out/build
  '';
  dontBuild = true;
}
