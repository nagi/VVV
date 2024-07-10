{ buildGoModule, fetchFromGitHub, lib }:

buildGoModule rec {
  pname = "go-changelog";
  version = "56335215ce3a8676ba7153be7c444daadcb132c7";

  src = fetchFromGitHub {
    owner = "hashicorp";
    repo = "go-changelog";
    rev = "56335215ce3a8676ba7153be7c444daadcb132c7";
    sha256 = "0z6ysz4x1rim09g9knbc5x5mrasfk6mzsi0h7jn8q4i035y1gg2j";
  };

  vendorHash = "sha256-bzX97Z/MbmaDTZDxgQoPERpF4CaxtJz2LAhlr4iBUN0=";

  subPackages = [ "cmd/changelog-build" ];
}
