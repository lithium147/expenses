#!/usr/bin/env bash

#sed -f group.sed expenses.txt > expenses-filtered.txt

#sed -f group.sed expenses.txt | gawk '{d=mktime("2013 " $2 $1); print d}'

#sed -f group.sed statements.txt
#sed -f group.sed statements.txt | sed -f filter.sed
#cat statements.txt | sed -f group.sed | sed -f merge.sed | sed -f filter.sed | sed -f categorise.sed

cat ../../../target/icici-statements.txt | sed -f group.sed | paste -d ' '  - - | sed -f filter.sed | sed -f categorise.sed | gawk -f process.awk | sort

#cat ../../../target/icici-statements-2014.txt | sed -f group.sed | sed -f merge.sed | sed -f filter.sed | sed -f categorise.sed | gawk -f process.awk | sort



