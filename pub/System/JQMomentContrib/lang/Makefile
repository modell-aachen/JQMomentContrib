FOSWIKI_ROOT?=~/foswiki/trunk/core
TARGET= \
  ca.js \
  da.js \
  de.js \
  en-gb.js \
  es.js \
  eu.js \
  fi.js \
  fr.js \
  gl.js \
  is.js \
  it.js \
  jp.js \
  kr.js \
  nb.js \
  nl.js \
  pl.js \
  pt.js \
  ru.js \
  sv.js \
  tr.js \
  zh-cn.js \
  zh-tw.js

GIT_SOURCES= \
  ca.uncompressed.js \
  da.uncompressed.js \
  de.uncompressed.js \
  en-gb.uncompressed.js \
  es.uncompressed.js \
  eu.uncompressed.js \
  fi.uncompressed.js \
  fr.uncompressed.js \
  gl.uncompressed.js \
  is.uncompressed.js \
  it.uncompressed.js \
  jp.uncompressed.js \
  kr.uncompressed.js \
  nb.uncompressed.js \
  nl.uncompressed.js \
  pl.uncompressed.js \
  pt.uncompressed.js \
  ru.uncompressed.js \
  sv.uncompressed.js \
  tr.uncompressed.js \
  zh-cn.uncompressed.js \
  zh-tw.uncompressed.js \

-include $(FOSWIKI_ROOT)/pub/System/JQueryPlugin/Makefile.include

git: $(GIT_SOURCES)

%.uncompressed.js: ../git/lang/%.js
	cp $< $@

clean:
	rm -f $(TARGET) *.gz
