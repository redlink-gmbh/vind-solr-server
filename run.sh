#!/usr/bin/env bash

echo "Create cores $CORES";

for i in $(echo $CORES  | sed "s/,/ /g")
do
    mkdir -p solrhome/cores/${i}
    echo -e "name=$i\nconfigSet=vind\nruntimeLib=false" \
         >solrhome/cores/$i/core.properties
done

echo "Start solr"

exec solr/bin/solr start -f -force -s /solr/solrhome
