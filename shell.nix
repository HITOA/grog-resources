with import <nixpkgs> {};
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [ 
    cmake
  ];

  NIX_LD_LIBRARY_PATH = lib.makeLibraryPath [
    stdenv.cc.cc
  ];

  NIX_LD = lib.fileContents "${stdenv.cc}/nix-support/dynamic-linker";
}