#! /bin/sh

error() {
    echo "$1"
    exit 1
}

# set -x

## subdirectoris that contain Makefile pamphlets of interest
SUBDIRS=". lsp src                       \
                 src/lib                 \
		  src/boot               \
		  src/interp             \
		  src/share              \
		  src/algebra            \
		  src/etc                \
		  src/clef               \
		  src/doc                \
		  src/graph              \
                     src/graph/Gdraws    \
                     src/graph/view2D    \
                     src/graph/view3D    \
                     src/graph/viewAlone \
                     src/graph/viewman   \
		  src/sman               \
		  src/hyper              \
		  src/input              \
                  src/booklets           \
"


notangle ./configure.ac.pamphlet > ./configure.ac \
   || error "could not extract configure.ac from pamphlet file"

for d in $SUBDIRS; do
    notangle -t8 $d/Makefile.pamphlet > $d/Makefile.in \
       || error "could not extract $d/Makefile.in from pamphlet file"
done

autoconf || error "could not re-generate configure"


