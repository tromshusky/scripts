#!/bin/sh
true ${1?} || exit
mktemp -u && nix-store --version &&  mv --help || echo depends on mktemp nix-store mv
mktemp -u && nix-store --version &&  mv --help || exit

mv $(nix-store --realise $(nix-store --add $1) --add-root $(mktemp -u)) ${2-$1}
