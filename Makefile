MAP=map
OUT=html
TEMPLATE=tpl/default

include Makefile.base

index.html: home.html
	ln -s $< $@
