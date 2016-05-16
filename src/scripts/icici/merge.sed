# use square brackets to merge onto one line
/^\[$/,/^\]$/{
:a
    N
    s/\n/, /g
    /^\[.*\]$/!ta
}

# remove the square brackets
s/^\[, \(.*\), \]/\1/
