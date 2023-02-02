################################################################################
# Makefile variables
################################################################################
# General
VERBOSE=@
INSTALL_PREFIX=/usr/local

# Target
TARGET=install

################################################################################
# Default target: make all
################################################################################
.PHONY: all
all: install

################################################################################
# Install/Uninstall: install/uninstall the script
################################################################################
.PHONY: install
install:
	@ echo "-- Installing the script in $(INSTALL_PREFIX)"
	$(VERBOSE) mkdir -p $(INSTALL_PREFIX)/bin
	$(VERBOSE) cp -iv ./envutils $(INSTALL_PREFIX)/bin

.PHONY: uninstall
uninstall:
	@ echo "-- Uninstalling the script in $(INSTALL_PREFIX)"
	$(VERBOSE) rm -iv $(INSTALL_PREFIX)/bin/$(TARGET)

################################################################################
# Clean: removes everything that can be rebuilt
################################################################################
.PHONY: clean
clean:
	@ echo "-- Cleaning building files"
	$(VERBOSE) rm -rf *~

################################################################################
# User help menu
################################################################################
.PHONY: help
help:
	@ echo "################################################################### ";
	@ echo "This is the Makefile for the execution of $(TARGET)";
	@ echo "make help shows this extra information";
	@ echo "";
	@ echo "Usage: make target VAR=";
	@ echo "target is one of:";
	@ echo "  help                      : show this help message";
	@ echo "  all                       : build the project";
	@ echo "  clean                     : removes everything that can be rebuilt";
	@ echo "  install                   : install the script in INSTALL_PREFIX";
	@ echo "  uninstall                 : uninstall the script in INSTALL_PREFIX";
