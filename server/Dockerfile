FROM jeqo/apache-kafka:0.10.1.0

MAINTAINER Jorge Quilcate <jorge.quilcate@sysco.no>

ENV ZOOKEEPER_CONNECT=zookeeper:2181 \
    BROKER_ID=1 \
    LOG_DIRS=/tmp/kafka-logs \
    NUM_PARTITION=1

EXPOSE 9092

USER root
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

USER $KAFKA_USER

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD [ "kafka-server-start.sh", "config/server.properties" ]
