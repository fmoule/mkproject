
######################
## Fonctions générales
######################

## Fonctions d'archivage
TAR := tar
ZIP := gzip

### Fonctions DEBIAN ###
define init-debian
	mkdir -p $1/debian
	mkdir -p $1/debian/usr/local/bin
	mkdir -p $1/debian/usr/local/man
endef