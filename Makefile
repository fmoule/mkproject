
## Paramètres de compilation
VERSION := 1.0

## Inclusion des différents fichiers
TEMPLATE := template
include ${TEMPLATE}/make-tree.mk
include ${TEMPLATE}/make-functions.mk
include ${TEMPLATE}/make-modules.mk

make-test:
	$(call init-debian,${TARGET})

#######################################
## Définition des tâches principales ##
#######################################

.PHONY: clean

clean:
	rm -rf ${TARGET}

init:clean
	$(call init-module,.)

compile:init
	$(call init-debian-target)
	cp -r ${TEMPLATE}/Makefile.mk ${TARGET}/usr/local/template/Makefile
	cp -r bin/* ${TARGET}/usr/local/bin