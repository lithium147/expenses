# skip lines starting with tesco as these are the statement names
/tesco-/n
# subsistence - assume everything is subsistence by default
s/$/ 11/
# travel
/OYSTER AUTOTOPUP/s/ 11$/ 9/
/OYSTER BUS/s/ 11$/ 9/
/OYSTER RENEW WEB/s/ 11$/ 9/
/WESTFIELD SHOPPING/s/ 11$/ 9/
/WESTMINSTER PARKING/s/ 11$/ 9/
/KINGS MALL CAR PARK/s/ 11$/ 9/
/APCOA-HAL-SS/s/ 11$/ 9/
/Uber/s/ 11$/ 9/
/MARYLEBONE STATION/s/ 11$/ 9/
/TAXI FARE BY VERIFONE/s/ 11$/ 9/

# internet services
/APPLE ITUNES/s/ 11$/ 8/
/FASTHOSTS INTERNET/s/ 11$/ 8/
/PLUSNET/s/ 11$/ 8/

# capital items
/Amazon *Mktplce/s/ 11$/ 22/
/Amazon EU/s/ 11$/ 22/
/JOURNOVA.COM/s/ 11$/ 22/
/APPLE ONLINE STORE/s/ 11$/ 22/
/PC WORLD/s/ 11$/ 22/
/OTHER WORLD COMPUTING/s/ 11$/ 22/

#company admin
/COMPANIES HOUSE/s/ 11$/ 14/

#insurance
/QDOSCONSULTING/s/ 11$/ 13/

#postage
/ROYALMAIL/s/ 11$/ 19/
/INTERPARCEL/s/ 11$/ 19/
/POST OFFICE COUNTER/s/ 11$/ 19/

###############
# BACKGROUND BARS -> entertaining?


# whats this:
# APCOA-HAL-SS - parking
#
#TLC SOUTHERN CRAWLEY, 112.19 - TLC Electrical Supplies - filter
#BAGPORT UK LTD HOUNSLOW - lost prop - filter
#PORTICO (MIDLAND) LTD - screwfix - filter
