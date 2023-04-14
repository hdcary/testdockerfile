FROM influxdb:latest

#USER root
# Create a new volume and mount it to /data
#SHELL ["/bin/bash", "-c 'mkdir -p /var/lib/influxdb2'"]
#SHELL ["/bin/bash", "-c 'chown -R influxdb:influxdb /var/lib/influxdb2'"]

#SHELL ["/bin/bash", "-c 'mkdir -p /var/lib/influxdb2/engine'"]
#SHELL ["/bin/bash", "-c 'chown -R influxdb:influxdb /var/lib/influxdb2/engine'"]

RUN groupadd -r opc && useradd --no-log-init -r -g opc opc
VOLUME /var/lib/influxdb2
RUN mkdir /data
VOLUME /home/opc/tmp/data /data
# Expose port

EXPOSE 8086
