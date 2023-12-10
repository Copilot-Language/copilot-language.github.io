#!/bin/bash

TITLE="$1"
NAV="$(cat nav)"
CONTENT="$(pandoc $2 -t html)"
TARGET="_site/$(basename $2 .md).html"
TEMPLATE="$3"
mkdir -p _site/
env TITLE="$TITLE" NAV="$NAV" CONTENT="$CONTENT" envsubst '${TITLE}':'${NAV}':'${CONTENT}' < tpl/$TEMPLATE > $TARGET
