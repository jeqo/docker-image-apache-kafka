#!/bin/bash
set -e

sed -i "s|^\(zookeeper\.connect\s*=\s*\).*\$|\1$ZOOKEEPER_CONNECT|" config/server.properties
sed -i "s|^\(broker\.id\s*=\s*\).*\$|#broker\.id=|" config/server.properties
sed -i "s|\(log\.dirs=\).*\$|\1${KAFKA_LOGS}|" config/server.properties
sed -i "s|^\(#listeners\s*=\).*\$|listeners=$LISTENERS|" config/server.properties
sed -i "s|^\(#advertised\.listeners\s*=\).*\$|advertised\.listeners=$ADVERTISED_LISTENERS|" config/server.properties
# LISTENERS PLAINTEXT://$HOSTNAME:$KAFKA_PORT
# ADVERTISED_LISTENERS PLAINTEXT://$SERVICE:$KAFKA_PORT
exec "$@"
