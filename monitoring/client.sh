#!/usr/local/env sh

url=https://dl.influxdata.com/telegraf/releases
binary=telegraf-1.18.2_linux_amd64.tar.gz
binaryhash=9a01d0351b3bafd94ada8278f191271242cd12122c22b4ec44fdc55ae062fc4a
wget -nc $url/$binary
if [ "$binaryhash" = "$(sha256sum $binary | awk '{print $1}')" ] ; then
    echo hash match ; echo
    tar xf telegraf-1.18.2_linux_amd64.tar.gz
    ./telegraf-1.18.2/usr/bin/telegraf --config telegraf.conf
else
    echo hash not match ; echo
    rm -f $binary
fi
