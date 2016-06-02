#!/bin/bash

set -o xtrace

ldfu.sh -p get-ciks.n3 -i http://harth.org/andreas/2016/tickers/nasdaq-tickers.ttl -s -o - | grep -e "sameAs" > nasdaq-tickers-cik.nt
scp nasdaq-tickers-cik.nt aharth@harth.org:/var/www/harth.org/andreas/2016/tickers/

ldfu.sh -p get-ciks.n3 -i http://harth.org/andreas/2016/tickers/nyse-tickers.ttl -s -o - | grep -e "sameAs" nyse-tickers-cik.nt
scp nyse-tickers-cik.nt aharth@harth.org:/var/www/harth.org/andreas/2016/tickers/
