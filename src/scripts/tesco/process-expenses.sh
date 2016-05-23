#!/usr/bin/env bash

cat ../../../target/tesco-statements.txt | sed -f filter.sed #| sed -f categorise.sed | gawk -f process-expenses.awk
