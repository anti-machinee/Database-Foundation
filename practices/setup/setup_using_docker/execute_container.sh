# interact
docker compose exec \
    -ti \
    influxdb2 \
    /bin/bash

# check server config
docker compose exec \
    -it \
    influxdb2 \
    influx server-config

# inspect server
docker compose exec \
    -d \
    -it \
    influxdb2 \
    influxd inspect