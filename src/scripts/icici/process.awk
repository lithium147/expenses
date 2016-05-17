BEGIN {
    FS = ", "
}
{
    split($1, dateParts, "-")
    dateString = sprintf("%d %d %d %d %d %d", dateParts[3], dateParts[2], dateParts[1], 0, 0, 0)
    dateEpoch = mktime(dateString)
    monthString = strftime("%Y-%m", dateEpoch)

    stmntOut = "icici-" monthString
    dateOut = strftime("%Y-%m-%d", dateEpoch)

    refOut = $3
    descOut = $6
    if(NF >= 9) {
        descOut = descOut " " $7
    }
    if($3 == "SWIFT/CHAPS") {
        split($6,a," ")
        refOut=a[1]
        descOut=a[2]
    }

    amount = $4
    transType = $(NF-1)
    categoryOffset = $NF
    amountOut = applySign(amount, transType)

    i=1
    delete columns
    columns[i++]=dateOut
    columns[i++]=stmntOut
    columns[i++]=refOut
    columns[i++]=descOut
    columns[i++]=amount
    columns[i++]="100%"
    columns[i++]=""
    columns[i++]=amountOut
    columns[i++]=""
    columns[i++]=""
    columns[i++]=""
    categoryColumn = i + categoryOffset
    fillOutValuesToRequiredColumn(columns, i, categoryColumn-1)
    columns[categoryColumn]=-amountOut

    print join(columns, ", ")
}

function fillOutValuesToRequiredColumn(columns, startCol, colCount) {
    for(i=startCol;i<=colCount;i++) {
        columns[i]=""
    }
}

function applySign(amount, transType) {
    result = amount
    if(transType == "debit") {
        result = -amount
    }
    return result
}

function join(elements, separator) {
    joined = sep = ""
    for (i=1; i in elements; i++) {
        joined = joined sep elements[i]
        sep = separator
    }
    return joined
}












