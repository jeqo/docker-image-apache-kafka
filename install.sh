curl -o $KAFKA_PKG.tgz $KAFKA_URL
tar xf $KAFKA_PKG.tgz
rm -f $KAFKA_PKG.tgz
mv $KAFKA_PKG $KAFKA_HOME
