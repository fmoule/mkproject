############################################
### Définition des fonctions sur les modules
############################################

TEMPLATE_DIR := ./template

define init-module
	@echo "Création du module $1"
	mkdir -p $1/src/main/cpp
	mkdir -p $1/src/main/resources
	mkdir -p $1/src/test/cpp
	mkdir -p $1/src/test/resources
	mkdir -p $1/include/main/cpp
	mkdir -p $1/include/test/cpp
endef

define init-debian-target
	mkdir -p ${TARGET}/debian
	mkdir -p ${TARGET}/debian/usr/local/bin
	mkdir -p ${TARGET}/debian/usr/local/template
	mkdir -p ${TARGET}/debian/usr/local/man
endef