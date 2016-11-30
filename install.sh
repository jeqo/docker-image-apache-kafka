#!/bin/bash
#groupadd -r $KAFKA_GROUP
#useradd -r -g $KAFKA_GROUP $KAFKA_USER

curl -o $KAFKA_PKG.tgz $KAFKA_URL
tar xf $KAFKA_PKG.tgz
rm -f $KAFKA_PKG.tgz
mv $KAFKA_PKG $KAFKA_HOME
#chown -R $KAFKA_USER:$KAFKA_GROUP $KAFKA_HOME
#chown $KAFKA_USER:$KAFKA_GROUP /kafka-entrypoint.sh
