# subsistence - assume everything is subsistence by default
#s/$/ 11/

# telephone
/VODAFONE LIMITED/s/$/, 7/
# vat
/HMRC VAT\/[0-9]*/s/$/, 16/
# income
/HYPHEN.COM/s/$/, 0/
/INTEREST RUN/s/$/, 0/
/SOLUBRIS LIMITED/s/$/, 0/

# bank fees
/DD REJ/s/$/, 6/

# invest
/FUNDING CIRCLE/s/$/, 4/
/FCL CLIENT ACC\/FCT/s/$/, 4/
/CLIENTS ACCOUNT/s/$/, 4/
/REBUILDING SOCIETY/s/$/, 4/
/REBUILDI LTD SW/s/$/, 4/
/FCT[0-9]*\/SOLUBRIS LTD/s/$/, 4/;s/FCT[0-9]*\/SOLUBRIS LTD/Funding Circle/

#dividend (could be paye)
/PAM/s/$/, 1/;s/PAM/Dividend - PAM/
/PORNPAN/s/$/, 1/;s/PORNPAN/Dividend - PORNPAN/
/TIM/s/$/, 1/;s/TIM/Dividend - TIM/

#accountancy
/CHRISDARBYACCOUNTANT/s/$/, 12/
/THE HUGHES CONSULTANCY/s/$/, 12/

#corporation tax
/HMRC NDDS/s/$/, 15/

#corporation tax
/SWIFT\/CHAPS.*HMRC/s/$/, 17/

# dividends - manually correlate these

#BILL ID : 8964SMT00138614
#what to do with this:
#SWIFT/CHAPS, BILL ID : 8964SMT0013 -> 8964SMT0013,
#s/SWIFT\/CHAPS\, BILL ID : \([^ ]*\)/\1,/



