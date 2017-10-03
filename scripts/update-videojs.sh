#!/bin/bash

export OLD_VERSION=5.19.2
export NEW_VERSION=6.2.8

# check if language files exist
wget --delete-after https://vjs.zencdn.net/$NEW_VERSION/lang/nl.js

# update videojs in examples and documentation
find examples/ -type f -name '*.html' -exec sed -i "s/$OLD_VERSION/$NEW_VERSION/" {} \;

#git commit -am "bump videojs to $NEW_VERSION in examples"
