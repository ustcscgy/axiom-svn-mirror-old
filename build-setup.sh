#! /bin/sh

error() {
    echo "$1"
    exit 1
}

# set -x
notangle ./configure.ac.pamphlet > ./configure.ac \
   || error "could not extract configure.ac from pamphlet file"

notangle -t8 ./Makefile.pamphlet > ./Makefile.in \
   || error "could not extract Makefile.in from pamphlet file"

notangle -t8 ./lsp/Makefile.pamphlet > ./lsp/Makefile.in \
   || error "could not extract Makefile.in from pamphlet file"

autoconf || error "could not re-generate configure"


