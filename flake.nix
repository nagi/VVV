{
  description = "HashiCorp Vagrant project";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/release-24.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          system = "${system}";
        };
      in {
        devShells.default = pkgs.mkShell rec {
            name = "vagrant";

            packages = [
              pkgs.ruby_3_3
            ];

            shellHook = ''
              echo "Hello there! (don't forget to run dnsmasq)"

              # Prepend binstubs to PATH for development, which causes Vagrant-agogo
              # to use the legacy Vagrant in this repo. See client.initVagrantRubyRuntime
              PATH=$PWD/binstubs:$PATH
            '';
        };
      });
}
