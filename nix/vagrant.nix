{ lib, stdenv, autoconf, autogen, automake, go, go-bindata, go-changelog
, go-mockery, go-protobuf, go-protobuf-json, gotools, grpc-tools, grpcurl
, libarchive, libpng, libtool, mkShell, nasm, nodejs_20, pkg-config, protobuf
, protoc-gen-doc, protoc-gen-go-grpc, ruby_3_3, openssl_3_2, sqlite, zlib }:

mkShell rec {
  name = "vagrant";

  packages = [
    go
    go-bindata
    grpcurl
    nodejs_20
    protoc-gen-doc
    ruby_3_3
    openssl_3_2

    protobuf
    protoc-gen-go-grpc
    go-protobuf
    go-protobuf-json
    gotools
    go-mockery
    grpc-tools

    # Need bsdtar to run ruby tests
    libarchive

    # Custom packages, added to overlay
    go-changelog

    # Needed for website/
    autoconf
    autogen
    automake
    libpng
    libtool
    nasm
    pkg-config
    zlib
  ];

  shellHook = ''
    echo "Hello there! (don't forget to run dnsmasq)"
    # workaround for npm/gulp dep compilation
    # https://github.com/imagemin/optipng-bin/issues/108
    LD=$CC

    # Prepend binstubs to PATH for development, which causes Vagrant-agogo
    # to use the legacy Vagrant in this repo. See client.initVagrantRubyRuntime
    PATH=$PWD/binstubs:$PATH
  '';

  hardeningDisable = [ "fortify" ];
}
