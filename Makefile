.PHONY: all

all: _site/about.html \
     _site/contact.html \
     _site/documentation.html \
     _site/download.html \
     _site/home.html \
     _site/index.html

_site/about.html: about.md
	./compile.sh About $< default

_site/contact.html: contact.md
	./compile.sh Contact $< default

_site/documentation.html: documentation.md
	./compile.sh Documentation $< default

_site/download.html: download.md
	./compile.sh Download $< default

_site/home.html: home.md
	./compile.sh Home $< home

_site/index.html: _site/home.html
	cp $< $@
