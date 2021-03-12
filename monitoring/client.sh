wget -nc https://dl.influxdata.com/telegraf/releases/telegraf-1.17.3_linux_amd64.tar.gz
tar xf telegraf-1.17.3_linux_amd64.tar.gz
./telegraf-1.17.3/usr/bin/telegraf --config telegraf.conf
