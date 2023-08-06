{}:
let
  rev = "18036c0be90f4e308ae3ebcab0e14aae0336fe42";
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
  pkgs = import nixpkgs { };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    rustup
    cargo-watch
  ];
}
