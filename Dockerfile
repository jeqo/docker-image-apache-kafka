FROM java:8-jre

MAINTAINER Jorge Quilcate <quilcate.jorge@gmail.com>

ENV KAFKA_HOME=/opt/apache-kafka \
    KAFKA_USER=kafka \
    KAFKA_GROUP=kafka

ENV KAFKA_VERSION=0.10.1.0 \
    SCALA_VERSION=2.11

ENV KAFKA_PKG_NAME=kafka_$SCALA_VERSION-$KAFKA_VERSION
ENV KAFKA_URL=http://www-us.apache.org/dist/kafka/$KAFKA_VERSION/$KAFKA_PKG_NAME.tgz

RUN apt-get update && \
    apt-get install netcat wget -y

RUN groupadd -r $KAFKA_GROUP && \
    useradd -r -g $KAFKA_GROUP $KAFKA_USER

RUN wget $KAFKA_URL && \
    tar xvzf $KAFKA_PKG_NAME.tgz && \
    rm -f $KAFKA_PKG_NAME.tgz && \
    mv $KAFKA_PKG_NAME $KAFKA_HOME && \
    chown -R $KAFKA_USER:$KAFKA_GROUP $KAFKA_HOME

ENV PATH=$KAFKA_HOME/bin:$PATH

USER $KAFKA_USER

WORKDIR $KAFKA_HOME

CMD bash
