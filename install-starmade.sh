#!/bin/sh

cd /tmp
wget -q http://files.star-made.org/build/starmade-build_${STARMADE_BUILD_REV}.zip
mkdir /starmade
cd /starmade
unzip /tmp/starmade-build_${STARMADE_BUILD_REV}.zip
chmod ug+x StarMade-dedicated-server-linux.sh
rm /tmp/starmade-build_${STARMADE_BUILD_REV}.zip

for config in admins blacklist protected server-message whitelist; do
    ln -sf config/${config}.txt ${config}.txt
done

ln -sf config/server.cfg server.cfg
