#!/bin/bash

set -o xtrace

for i in amex nasdaq nyse ; do
    wget "http://www.nasdaq.com/screening/companies-by-name.aspx?letter=0&exchange=$i&render=download" -O $i-tickers.csv
    sh tarql/target/appassembler/bin/tarql $i-tickers.rq $i-tickers.csv > $i-tickers.ttl
    scp $i-tickers.ttl aharth@harth.org:/var/www/harth.org/andreas/2016/tickers/
    # roqet -p https://query.wikidata.org/bigdata/namespace/wdq/sparql nasdaq-ticker-wikidata.rq
    curl -G --data-urlencode "query=`cat $i-ticker-wikidata.rq`" https://query.wikidata.org/sparql | rapper -i rdfxml -o turtle - http://example.org/ | grep -ve "@base <http://example.org/> ." > $i-tickers-wikidata.ttl
    scp $i-ticker-wikidata.ttl aharth@harth.org:/var/www/harth.org/andreas/2016/tickers/
done
