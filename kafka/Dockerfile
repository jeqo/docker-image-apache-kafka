FROM jeqo/apache-kafka-base

ENV KAFKA_LOGS /tmp/kafka-logs
ENV KAFKA_PORT 9092
ENV ZOOKEEPER_CONNECT zookeeper:2181
ENV NUM_PARTITION 1

WORKDIR $KAFKA_HOME

EXPOSE $KAFKA_PORT

VOLUME $KAFKA_LOGS

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["bin/kafka-server-start.sh", "config/server.properties"]

HEALTHCHECK --interval=5s --timeout=3s \
 CMD bin/kafka-topics.sh --zookeeper $ZOOKEEPER_CONNECT --list || exit 1
