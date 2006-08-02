#! /bin/sh

error() {
    echo "$1"
    exit 1
}

# set -x
notangle ./configure.ac.pamphlet > ./configure.ac \
   || error "could not extract configure.ac from pamphlet file"

autoconf || error "could not re-generate configure"


