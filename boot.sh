#!/bin/bash

cd /starmade

for config in admins blacklist protected server-message whitelist; do
    if ! test -f config/${config}.txt; then
        touch config/${config}.txt
    fi
done

if ! test -f config/server.cfg; then
    cp server-example.cfg config/server.cfg
fi

exec java -Xms128m -Xmx1024m -jar ./StarMade.jar -server
