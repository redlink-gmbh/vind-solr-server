#!/usr/bin/env bash

echo "Create cores $CORES";

for i in $(echo $CORES  | sed "s/,/ /g")
do
    mkdir -p solrhome/${i}
    echo -e "name=$i\nconfigSet=vind\nruntimeLib=false" \
         >solrhome/$i/core.properties
done

echo "Start solr"

exec solr/bin/solr start -f -force -s /solr/solrhome
