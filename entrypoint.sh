#!/bin/sh
set -e

# Create wiki
if [ ! -d /var/lib/tiddlywiki/wikis ]
then
  mkdir /var/lib/tiddlywiki/wikis
  cp -r /opt/tiddlywiki/plugins/OokTech/Bob/MultiUserWiki /var/lib/tiddlywiki/wikis/BobWiki
fi

# Start the tiddlywiki server
node /opt/tiddlywiki/tiddlywiki.js wikis/BobWiki --wsserver