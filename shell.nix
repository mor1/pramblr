{
  pkgs ? import <nixpkgs> { },
}:
let
  libraryPath =
    with pkgs;
    lib.makeLibraryPath [
      stdenv.cc.cc
    ];
in
pkgs.mkShell {
  shellHook = ''
    echo "LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${libraryPath}" > .env
    export "LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${libraryPath}"
  '';
}
