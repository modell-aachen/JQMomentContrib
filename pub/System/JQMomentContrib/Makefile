FOSWIKI_ROOT?=~/foswiki/trunk/core
TARGET=moment.js
SUBDIRS=lang
GIT_SOURCES=moment.uncompressed.js

-include $(FOSWIKI_ROOT)/pub/System/JQueryPlugin/Makefile.include

git: $(GIT_SOURCES)

%.uncompressed.js: git/%.js
	cp $< $@

clean: 
	rm -f $(TARGET) *.gz
