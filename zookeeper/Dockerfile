FROM jeqo/apache-kafka-base

MAINTAINER Jorge Quilcate <quilcate.jorge@gmail.com>

ENV ZOOKEEPER_LOGS /tmp/zookeeper
ENV ZOOKEEPER_PORT 2181
ENV ZOOKEEPER_PORT1 2888
ENV ZOOKEEPER_PORT2 3888
ENV ZOOKEEPER_MYID ""

WORKDIR $KAFKA_HOME

EXPOSE $ZOOKEEPER_PORT
EXPOSE $ZOOKEEPER_PORT1
EXPOSE $ZOOKEEPER_PORT2

VOLUME $ZOOKEEPER_LOGS

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["bin/zookeeper-server-start.sh", "config/zookeeper.properties"]
