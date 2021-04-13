wget -nc https://dl.influxdata.com/telegraf/releases/telegraf-1.18.1_linux_amd64.tar.gz
tar xf telegraf-1.18.1_linux_amd64.tar.gz
./telegraf-1.18.1/usr/bin/telegraf --config telegraf.conf
