BEGIN {
    rolloverDate = mktime("2013 08 31 00 00 00")
}
{
    if(NF == 1 ) {
        stmntOut = $0
        next
    }

    dateString = sprintf("%d %d %d %d %d %d", 2013, monthToNum($2), $1, 0, 0, 0)
    dateEpoch = mktime(dateString)
    if(dateEpoch < rolloverDate) {
        dateString = sprintf("%d %d %d %d %d %d", 2014, monthToNum($2), $1, 0, 0, 0)
        dateEpoch = mktime(dateString)
    }
    dateOut = strftime("%Y-%m-%d", dateEpoch)
    descOut = ""
    for (i=6; i<NF-1; i++) {
        descOut = descOut " " $i
    }
    refOut = $5
    amountOut = stripPoundSign($(NF-1))
    categoryOffset = $NF

    i=1
    delete columns
    columns[i++]=dateOut
    columns[i++]=stmntOut
    columns[i++]=refOut
    columns[i++]=descOut
    columns[i++]=amountOut
    columns[i++]="100%"
    columns[i++]=""
    columns[i++]=""
    columns[i++]=""
    columns[i++]=""
    columns[i++]=-amountOut
    categoryColumn = i + categoryOffset
    fillOutValuesToRequiredColumn(columns, i, categoryColumn-1)
    columns[categoryColumn]=amountOut

    print join(columns, ", ")
}

function monthToNum(m) {
    return(((index("JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC", m) - 1) / 3) + 1)
}

function fillOutValuesToRequiredColumn(columns, startCol, colCount) {
    for(i=startCol;i<=colCount;i++) {
        columns[i]=""
    }
}

function stripPoundSign(amount) {
    result = amount
    if(substr(result, 1, 1) == "£") {
        result = substr(result, 2)
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












