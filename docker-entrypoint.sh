#!/bin/bash
set -e

sed -i "s|^\(zookeeper\.connect\s*=\s*\).*\$|\1$ZOOKEEPER_CONNECT|" config/server.properties
sed -i "s|^\(broker\.id\s*=\s*\).*\$|#broker\.id=|" config/server.properties
sed -i "s|\(log\.dirs=\).*\$|\1${KAFKA_LOGS}|" config/server.properties
sed -i "s|^\(num\.partitions\s*=\).*\$|\1$NUM_PARTITION|" config/server.properties

exec "$@"
