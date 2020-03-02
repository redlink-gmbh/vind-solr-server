#!/usr/bin/env bash
cp solrhome-template/solr.xml solrhome/solr.xml

echo "Create cores $CORES";

for i in $(echo $CORES  | sed "s/,/ /g")
do
    cp -r solrhome-template/core solrhome/$i
    echo $"name=$i\nruntimeLib=false">solrhome/$i/core.properties
done

#rm -R solrhome/core

echo "Start solr"

solr/bin/solr start -f -force -s /solr/solrhome
