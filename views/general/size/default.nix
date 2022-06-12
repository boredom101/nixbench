{ stdenv, substituteAll, file ? "." }:
stdenv.mkDerivation {
  name = "file-size";
  src = ./.;
  file = file;
  installPhase = ''
      mkdir -p $out
      substituteAll build $out/build
      chmod +x $out/build
  '';
  dontBuild = true;
}
