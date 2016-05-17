# remove commas in numbers
s/\([0-9]\),\([0-9]\)/\1\2/g

# commas around the numbers
s/\([0-9]*\.[0-9][0-9]\)/,\1,/g
s/, ,/, /g
s/ ,/, /g
s/, Cr/,/g
# remove date from interest run as it messes up other dates
s/:[0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9] TO [0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]//g
# comma after dates
s/\([0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]\) /\1, /g

# remove blanks last as this messes up the trailing "]"
/^$/d
