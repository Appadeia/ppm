DESTDIR ?= /usr/local
SHELL := /bin/bash
install:
	install -Dm755 "ppm" "${DESTDIR}/bin/ppm"
uninstall:
	@if [ -f "${DESTDIR}/bin/ppm" ]; then sudo rm "${DESTDIR}/bin/ppm"; fi
