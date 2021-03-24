MAP=map
OUT=html
TEMPLATE=tpl/default

include Makefile.base

publish: all
	git add .
	git stash
	git checkout master
	git checkout --theirs stash -- .
	git stash drop
	git reset .
	git clean -df
	git clean -df

home.html: home.nav home.content tpl/home
	web-render tpl/home home home.nav home.content > $@

index.html: home.html
	ln -s $< $@
