VERSION="Axiom 3.4 (April 2005)"
SPD=$(shell pwd)
SYS=$(notdir $(AXIOM))
SPAD=${SPD}/mnt/${SYS}
LSP=${SPD}/lsp
#GCLVERSION=gcl-2.4.1
#GCLVERSION=gcl-2.5
#GCLVERSION=gcl-2.5.2
#GCLVERSION=gcl-2.6.1
#GCLVERSION=gcl-2.6.2
#GCLVERSION=gcl-2.6.2a
#GCLVERSION=gcl-2.6.3
#GCLVERSION=gcl-2.6.5
GCLVERSION=gcl-2.6.6
AWK=gawk
GCLDIR=${LSP}/${GCLVERSION}
SRC=${SPD}/src
INT=${SPD}/int
OBJ=${SPD}/obj
MNT=${SPD}/mnt
ZIPS=${SPD}/zips
TMP=${OBJ}/tmp
SPADBIN=${MNT}/${SYS}/bin
INC=${SPD}/src/include
CCLBASE=${OBJ}/${SYS}/ccl/ccllisp
INSTALL=/usr/local/axiom
COMMAND=${INSTALL}/mnt/${SYS}/bin/axiom
TANGLE=${SPADBIN}/lib/notangle
NOISE="-o ${TMP}/trace"
PATCH=patch

PART=	cprogs
SUBPART= everything


ENV= SPAD=${SPAD} SYS=${SYS} SPD=${SPD} LSP=${LSP} GCLDIR=${GCLDIR} \
     SRC=${SRC} INT=${INT} OBJ=${OBJ} MNT=${MNT} ZIPS=${ZIPS} TMP=${TMP} \
     SPADBIN=${SPADBIN} INC=${INC} CCLBASE=${CCLBASE} PART=${PART} \
     SUBPART=${SUBPART} NOISE=${NOISE} GCLVERSION=${GCLVERSION} \
     TANGLE=${TANGLE} VERSION=${VERSION} PATCH=${PATCH}

all: noweb litcmds
	@ echo 1 making a ${SYS} system, PART=${PART} SUBPART=${SUBPART}
	@ echo 2 Environment ${ENV}
	@ ${TANGLE} -t8 -RMakefile.${SYS} Makefile.pamphlet >Makefile.${SYS}
	@ ${MNT}/${SYS}/bin/document Makefile
	@ mkdir -p ${MNT}/${SYS}/doc/src
	@ cp Makefile.dvi ${MNT}/${SYS}/doc/src/root.Makefile.dvi
	@ ${ENV} $(MAKE) -f Makefile.${SYS} 
	@echo 3 finished system build on `date` | tee >lastBuildDate

start: noweb litcmds

book:
	@ echo 79 building the book as ${MNT}/${SYS}/doc/book.dvi 
	@ mkdir -p ${TMP}
	@ mkdir -p ${MNT}/${SYS}/doc
	@ cp ${SRC}/doc/book.pamphlet ${MNT}/${SYS}/doc
	@ cp -pr ${SRC}/doc/ps ${MNT}/${SYS}/doc
	@ (cd ${MNT}/${SYS}/doc ; \
          if [ .${NOISE} = . ] ; then \
	    ( latex book.pamphlet --interaction nonstopmode ; \
	      latex book.pamphlet --interaction nonstopmode ) ; \
	   else \
	    ( latex book.pamphlet --interaction nonstopmode >${TMP}/trace ; \
	      latex book.pamphlet --interaction nonstopmode >${TMP}/trace ) ; \
	  fi ; \
	  rm book.pamphlet ; \
	  rm book.toc ; \
	  rm book.log ; \
	  rm book.aux )
	@ echo 80 The book is at ${MNT}/${SYS}/doc/book.dvi 

noweb:
	@echo 13 making noweb
	@mkdir -p ${OBJ}/noweb
	@mkdir -p ${TMP}
	@mkdir -p ${MNT}/${SYS}/bin/lib
	@( cd ${OBJ}/noweb ; \
	tar -zxf ${ZIPS}/noweb-2.10a.tgz ; \
	cd ${OBJ}/noweb/src/c ; \
	${PATCH} <${ZIPS}/noweb.modules.c.patch ; \
	cd ${OBJ}/noweb/src ; \
	${PATCH} <${ZIPS}/noweb.src.Makefile.patch ; \
	./awkname ${AWK} ; \
	${ENV} ${MAKE} BIN=${MNT}/${SYS}/bin/lib LIB=${MNT}/${SYS}/bin/lib \
                MAN=${MNT}/${SYS}/bin/man \
                TEXINPUTS=${MNT}/${SYS}/bin/tex all install >${TMP}/trace )
	@echo The file marks the fact that noweb has been made > noweb

nowebclean:
	@echo 14 cleaning ${OBJ}/noweb
	@rm -rf ${OBJ}/noweb
	@rm -f noweb

litcmds:
	@echo 0 ${ENV}
	@echo 10 copying ${SRC}/scripts to ${MNT}/${SYS}/bin
	@cp -pr ${SRC}/scripts/* ${MNT}/${SYS}/bin

install:
	@echo 78 installing Axiom in ${INSTALL}
	@mkdir -p ${INSTALL}
	@cp -pr ${MNT} ${INSTALL}
	@echo AXIOM=${INSTALL}/mnt/${SYS} >${COMMAND}
	@cat ${SRC}/etc/axiom >>${COMMAND}
	@chmod +x ${COMMAND}
	@echo 79 Axiom installation finished.
	@echo
	@echo Please add $(shell dirname ${COMMAND}) to your PATH variable
	@echo Start Axiom with the command $(shell basename ${COMMAND})
	@echo 


document: noweb litcmds
	@ echo 4 making a ${SYS} system, PART=${PART} SUBPART=${SUBPART}
	@ echo 5 Environment ${ENV}
	@ ${TANGLE} -t8 -RMakefile.${SYS} Makefile.pamphlet >Makefile.${SYS}
	@ ${ENV} $(MAKE) -f Makefile.${SYS} document
	@echo 6 finished system build on `date` | tee >lastBuildDate

clean: noweb litcmds
	@ echo 7 making a ${SYS} system, PART=${PART} SUBPART=${SUBPART}
	@ echo 8 Environment ${ENV}
	@ mkdir -p ${MNT}/${SYS}/doc/src
	@ ${TANGLE} -t8 -RMakefile.${SYS} Makefile.pamphlet >Makefile.${SYS}
	@ ${ENV} $(MAKE) -f Makefile.${SYS} clean
	@ rm -f lsp/Makefile
	@ rm -f src/Makefile
	@ rm -f noweb 
	@ rm -f trace
	@ rm -f *~
	@ rm -rf ${MNT}
	@echo 9 finished system build on `date` | tee >lastBuildDate

