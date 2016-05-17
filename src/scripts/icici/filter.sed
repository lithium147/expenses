
# ignore brought forward
/B\/F/d
# ignore inter-account transfers
/TRF .* 76210382/d
/TRF .* 76210383/d
# ignore transfers from hsbc-business into icici
/SOLUBRIS LTD SAVINGS/d
/SOLUBR160913/d

#debits:
/DIRECT DEBIT/s/$/, debit/
/SWIFT\/CHAPS/s/$/, debit/
/DD REJ/s/$/, debit/
/TIM WALTERS SOLUBRIS ICICI/s/$/, debit/
/BACS CHEQUE/s/$/, debit/

#credits:
/CHQ DEPOSIT/s/$/, credit/
/INT.PD/s/$/, credit/
/DIRECT CREDIT/s/$/, credit/
/HYPHEN.COM LTD/{
    /credit/!s/$/, credit/
}
/REBUILDI LTD SW/s/$/, credit/
/CLIENTS ACCOUNT REBUILDINGS/s/$/, credit/
# rebuilding society
/CLIENTS ACCOUNT 12546/s/$/, credit/
/FCL CLIENT ACC FCT[0-9]/s/$/, credit/

# STANDING ORDER/DIRECT CREDIT -> DIRECT CREDIT
s/STANDING ORDER\///

# 76210383:INT.PD:01-10-2013 TO 31-10-2013 -> 76210383:INT.PD
s/\(76210383:INT.PD\):[^,]*,/\1,/

# remove "BILL ID : ", the actual id will be used as reference
s/BILL ID : //

# remove CLIENTS ACCOUNT
s/CLIENTS ACCOUNT \(REBUILDINGS[^,]*\)/\1/
s/CLIENTS ACCOUNT \([0-9]*\)/\1/
s/CLIENTS ACCOUNT/REBUILDINGSOCIETY/g


#2014-01-02, icici-2014-01, REBUILDI LTD SW REBUILDINGS, REBUILDI LTD SW, 226.79, 100%, , 226.79, , , , , , , , -226.79
#2014-01-08, icici-2014-01, REBUILDINGSOCIETY, CLIENTS ACCOUNT, 153.00, 100%, , 153.00, , , , , , , , -153

# manually fix this one:
#2014-01-10, icici-2014-01, / DD REJ /HMRC VAT / INF 10.01., 2014, 15.00, 100%, , -15, , , , , , , , , , 15

#2014-04-25, icici-2014-04, CLIENTS ACCOUNT 12546, CLIENTS ACCOUNT, 152.75, 100%, , 152.75, , , , , , , , -152.75
#2014-04-25, icici-2014-04, REBUILDINGSOCIETY 12546, REBUILDINGSOCIETY, 152.75, 100%, , 152.75, , , , -152.75




