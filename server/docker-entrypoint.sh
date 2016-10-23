#!/bin/bash
set -e

sed -i "s|^\(zookeeper\.connect\s*=\s*\).*\$|\1$ZOOKEEPER_CONNECT|" config/server.properties
sed -i "s|^\(broker\.id\s*=\s*\).*\$|\1$BROKER_ID|" config/server.properties
sed -i "s|\(log\.dirs=\).*\$|\1${LOG_DIRS}|" config/server.properties
sed -i "s|^\(num\.partitions\s*=\s*\).*\$|\1$NUM_PARTITION|" config/server.properties

exec "$@"
