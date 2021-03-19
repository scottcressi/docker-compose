wget -nc https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.11.2-linux-x86_64.tar.gz
tar xf filebeat-7.11.2-linux-x86_64.tar.gz
./filebeat-7.11.2-linux-x86_64/filebeat -e -c filebeat.yml
