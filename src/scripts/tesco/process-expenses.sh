#!/usr/bin/env bash

#sed -f filter.sed expenses.txt > expenses-filtered.txt

#sed -f filter.sed expenses.txt | gawk '{d=mktime("2013 " $2 $1); print d}'
cat ../../../target/tesco-statements.txt | sed -f filter.sed | sed -f categorise.sed | gawk -f process-expenses.awk



