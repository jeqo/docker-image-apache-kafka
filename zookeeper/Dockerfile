FROM tmp-apache-kafka

MAINTAINER Jorge Quilcate <jorge.quilcate@sysco.no>

USER kafka

ENV KAFKA_HOME /opt/apache/kafka/kafka_2.11-0.10.0.0

WORKDIR $KAFKA_HOME

CMD ["sh", "-c", "bin/zookeeper-server-start.sh config/zookeeper.properties"]
