#!/bin/bash
set -e

if [ -z "$ZOOKEEPER_MYID" ]
then
      echo "\$ZOOKEEPER_MYID is empty"
else
      echo "$ZOOKEEPER_MYID" >> $ZOOKEEPER_LOGS/myid
      echo "$ZOOKEEPER_LOGS/myid created"
      cat $ZOOKEEPER_LOGS/myid
fi

exec "$@"
