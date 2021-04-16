url=https://dl.influxdata.com/telegraf/releases
binary=telegraf-1.18.1_linux_amd64.tar.gz
binaryhash=9983cbb853514f1940d237bb8ebd10d68ee6be051e560af04f19473d1e058fdc
wget -nc $url/$binary
if [ "$binaryhash" = "$(sha256sum $binary | awk '{print $1}')" ] ; then
    echo hash match ; echo
    tar xf telegraf-1.18.1_linux_amd64.tar.gz
    ./telegraf-1.18.1/usr/bin/telegraf --config telegraf.conf
else
    echo hash not match ; echo
    rm -f $binary
fi
