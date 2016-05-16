# skip lines starting with tesco as these are the statement names
/tesco-/n
# subsistence - assume everything is subsistence by default
s/$/ 11/
# travel
/OYSTER AUTOTOPUP/s/ 11$/ 9/
/OYSTER BUS/s/ 11$/ 9/
/OYSTER RENEW WEB/s/ 11$/ 9/
/WESTFIELD SHOPPING/s/ 11$/ 9/
/KINGS MALL CAR PARK/s/ 11$/ 9/
/APCOA-HAL-SS/s/ 11$/ 9/
# internet services
/APPLE ITUNES/s/ 11$/ 8/
/FASTHOSTS INTERNET/s/ 11$/ 8/
# capital items
/Amazon *Mktplce/s/ 11$/ 22/
/Amazon EU/s/ 11$/ 22/
/JOURNOVA.COM/s/ 11$/ 22/
/APPLE ONLINE STORE/s/ 11$/ 22/
#company admin
/COMPANIES HOUSE/s/ 11$/ 14/



# whats this:
# APCOA-HAL-SS - parking
#
#TLC SOUTHERN CRAWLEY, 112.19 - TLC Electrical Supplies - filter
#BAGPORT UK LTD HOUNSLOW - lost prop - filter
#PORTICO (MIDLAND) LTD - screwfix - filter
