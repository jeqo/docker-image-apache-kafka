FROM tmp-apache-kafka

MAINTAINER Jorge Quilcate <jorge.quilcate@sysco.no>

USER kafka

ENV KAFKA_HOME /opt/apache/kafka/kafka_2.11-0.10.0.0
ENV KAFKA_BROKER_ID 1

WORKDIR $KAFKA_HOME

CMD ["sh", "-c", "bin/kafka-server-start.sh config/server_$KAFKA_BROKER_ID.conf"]
