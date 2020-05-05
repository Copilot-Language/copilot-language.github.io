MAP=map
OUT=html
TEMPLATE=tpl/default

include Makefile.base

home.html: home.nav home.content tpl/home
	web-render tpl/home home home.nav home.content > $@

index.html: home.html
	ln -s $< $@
