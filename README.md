# Ticker Symbols in RDF

Scripts to get ticker symbols from NYSE and convert them to RDF; and to get mappings to Wikidata and Linked EDGAR at http://edgarwrap.ontologycentral.com/.

The output is available at http://harth.org/andreas/2016/tickers/.

## Tarql

The scripts use Tarql: SPARQL for Tables (http://tarql.github.io/) for creating the RDF from the nasdaq.com CSV files.

## Linked Data-Fu

The scripts use Linked Data-Fu (http://linked-data-fu.github.io/) for getting the ticker symbol/CIK mappings from EDGAR.