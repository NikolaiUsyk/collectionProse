
PROJECTDIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
COMP := pandoc
TEMPLATE := $(PROJECTDIR)proseTemplate.tex

# List directories and attach pdf to them call it targs and put them in the dirs
# The conf file should be a tex file or just a command line merger.

all: TARGS

# MERGE EM.

%.pdf: %.md
	pandoc -s $^ --template=$(TEMPLATE) -o $@
