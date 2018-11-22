FROM openjdk:8-jre-alpine

WORKDIR /solr

ARG VERSION=2.0.0
ARG SOLR_VERSION=7.5.0

EXPOSE 8983

RUN wget http://archive.apache.org/dist/lucene/solr/$SOLR_VERSION/solr-$SOLR_VERSION.zip && \
unzip solr-$SOLR_VERSION.zip && \
rm solr-$SOLR_VERSION.zip && \
mv solr-$SOLR_VERSION solr && \
apk update && \
apk add bash && \
wget https://search.maven.org/remotecontent?filepath=com/rbmhtechnology/vind/backend-solr/$VERSION/backend-solr-$VERSION.jar -O solrhome.zip && \
unzip solrhome.zip && \
rm solrhome.zip && \
cd solrhome/core && \
echo $'name=vind\nruntimeLib=false'>core.properties && \
mkdir lib && \
cd lib && \
wget https://search.maven.org/remotecontent?filepath=com/rbmhtechnology/vind/solr-suggestion-handler/${VERSION}/solr-suggestion-handler-${VERSION}.jar

ENTRYPOINT ["sh", "-c", "solr/bin/solr start -f -s /solr/solrhome"]
