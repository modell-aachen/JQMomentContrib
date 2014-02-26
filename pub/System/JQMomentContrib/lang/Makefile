FOSWIKI_ROOT?=~/foswiki/trunk/core
TARGET= \
  git \
  ar.js \
  ar-ma.js \
  bg.js \
  ca.js \
  cs.js \
  cv.js \
  da.js \
  de.js \
  en-ca.js \
  en-gb.js \
  eo.js \
  es.js \
  et.js \
  eu.js \
  fi.js \
  fr-ca.js \
  fr.js \
  gl.js \
  he.js \
  hu.js \
  id.js \
  is.js \
  it.js \
  ja.js \
  ko.js \
  lv.js \
  nb.js \
  ne.js \
  nl.js \
  pl.js \
  pt-br.js \
  pt.js \
  ro.js \
  ru.js \
  sl.js \
  sv.js \
  th.js \
  tr.js \
  tzm.js \
  tzm-la.js \
  uk.js \
  zh-cn.js \
  zh-tw.js 

GIT_SOURCES= \
  ar.uncompressed.js \
  ar-ma.uncompressed.js \
  bg.uncompressed.js \
  ca.uncompressed.js \
  cs.uncompressed.js \
  cv.uncompressed.js \
  da.uncompressed.js \
  de.uncompressed.js \
  en-ca.uncompressed.js \
  en-gb.uncompressed.js \
  eo.uncompressed.js \
  es.uncompressed.js \
  et.uncompressed.js \
  eu.uncompressed.js \
  fi.uncompressed.js \
  fr-ca.uncompressed.js \
  fr.uncompressed.js \
  gl.uncompressed.js \
  he.uncompressed.js \
  hu.uncompressed.js \
  id.uncompressed.js \
  is.uncompressed.js \
  it.uncompressed.js \
  ja.uncompressed.js \
  ko.uncompressed.js \
  lv.uncompressed.js \
  nb.uncompressed.js \
  ne.uncompressed.js \
  nl.uncompressed.js \
  pl.uncompressed.js \
  pt-br.uncompressed.js \
  pt.uncompressed.js \
  ro.uncompressed.js \
  ru.uncompressed.js \
  sl.uncompressed.js \
  sv.uncompressed.js \
  th.uncompressed.js \
  tr.uncompressed.js \
  tzm.uncompressed.js \
  tzm-la.uncompressed.js \
  uk.uncompressed.js \
  zh-cn.uncompressed.js \
  zh-tw.uncompressed.js 

-include $(FOSWIKI_ROOT)/pub/System/JQueryPlugin/Makefile.include

git: $(GIT_SOURCES)

%.uncompressed.js: ../git/lang/%.js
	cp $< $@
	sed -i 's/require([^)]*)/moment/g' $@

#require('../moment').lang('de', {

clean:
	rm -f $(TARGET) $(GIT_SOURCES) *.gz
