#!/bin/bash

BASEDIR=$(dirname "$0")
cp -r "$BASEDIR/../_posts/resources" "$BASEDIR/../assets/img/"
rm -rf "$BASEDIR/../_posts/resources"
find "$BASEDIR/../_posts" -name "*.md" -exec sed -i '' 's#resources/#/assets/img/resources/#g' {} \;
