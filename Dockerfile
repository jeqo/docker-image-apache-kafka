FROM openjdk:8-jre

MAINTAINER Jorge Quilcate <quilcate.jorge@gmail.com>

ARG kafka_version
ARG kafka_scala_version
ARG kafka_base_url

ENV KAFKA_VERSION ${kafka_version:-0.10.1.0}
ENV KAFKA_SCALA_VERSION ${kafka_scala_version:-2.11}

ENV KAFKA_BASE_URL ${kafka_base_url:-http://apache.uib.no}
ENV KAFKA_URL "$KAFKA_BASE_URL/kafka/$KAFKA_VERSION/kafka_$KAFKA_SCALA_VERSION-$KAFKA_VERSION.tgz"
ENV KAFKA_HOME /opt/kafka

WORKDIR /opt

RUN wget -O - $KAFKA_URL | tar zxf - && \
    mv /opt/kafka_$KAFKA_SCALA_VERSION-$KAFKA_VERSION $KAFKA_HOME