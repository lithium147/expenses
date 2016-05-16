# remove commas in numbers
s/\([0-9]\),\([0-9]\)/\1\2/g
# join dates onto one line and wrap with "[]"
/^[0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]$/{
    1!i\
    ]
    i\
    [
    N
    s/\n/, /
}
${
    a\
    ]
}

# remove blanks last as this messes up the trailing "]"
/^$/d
