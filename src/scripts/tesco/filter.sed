# remove commas from numbers
s/\([0-9]\),\([0-9]\)/\1\2/
# remove remaining commas
s/,/ /
# remove negative transactions
/-£[0-9.]*$/d

# parking permit
/WWW.LBHF.GOV.UK/d

# dentist
/LISTER HOUSE/d

#petrol
/CRYSTAL PALACE 96/d

/BACKGROUND BARS/d
/NOCHEX/d
/PAYPAL/d
/32 RED/d
/EQUIFAX/d
/THE EDEN PROJECT/d
/FUNDING CIRCLE/d
/BANK OF AMERICA BROMLE/d
/B&Q/d
/INTEREST - SEE SUMMARY/d
/The Betway Group/d
/VERVE/d
/WWW.BARBICAN/d
/CI LTD/d
/WWW.VESTERNET.COM/d
/PAYMENT RECEIVED/d
/DIRECT DEBIT PAYMENT/d
/BETFRED/d
/BETTERBATHROOMS.CO/d
/THEBETWAYGROUP/d
/WWW.WHOLESALE LED/d
/BESPOKEGLASSONLINE/d
/AGL*Women Can’t Serve/d
/LADBROKES/d
/sportingbet/d
/NEXT LONDON WESTFIELD/d
/HSS HIRE/d
/TESCO.*KENSINGTON/d
/10bet.com/d
/IKEA/d
/THAIAIRW/d
/ SHELL /d
/WWW.DOMINOS.CO.UK/d
/THE LOST ANGEL/d
/HOMEBASE/d
/THE OLD QUAY HOUSE/d
/EBAY EUROPE/d
/HORNIMAN AT HAYS/d
/PP ONLINE/d
/DECORATING DIRECT/d
/CREDITEXPERT.CO.UK/d
/DOMINO’S PIZZA/d
/FIVE STAR SERVICE STAT PENGE/d
/www.youwin.com/d
/CARD PAYMENT/d
/SCREWFIX/d
/SOUTHERN BELLE/d
/NSYS.*BKR/d
/Graze/d
/REUN THAI LTD/d
/B365/d
/POWERTOOLS 2U/d
/WICKES/d
/WILLOW WALK/d
/ROCKET.*0203 200 2022/d
/T & T FLOORING LTD/d
/ESCENTUAL/d
/PP\*2258CODE/d
/FULHAM BROADWAY CENTRE LONDON/d
/SOUTHBANK CENTRE/d
/COSTCUTTER/d
/BP WANDSWORTH/d
/TESCO PFS/d
/SAINSBURYS.*HAMMERSMITH/d
/TOSSED/d
/TESCO/d
/ZEITGEIST/d
/KINGS HEAD/d
/VICTORIA.*LONDON SW1W GBR/d
/MEAT LIQUOR/d
/BE AT ONE/d
/CASH HANDLING FEE/d
/PO FULHAM PALACE RD/d
/TALKTALK/d
/SUPERDRUG/d
/POUNDLAND/d
/NEW LOOK/d
/T K MAXX/d
/WWW.CARPETRUNNERS.CO.U/d
/ARGOS/d
/FULHAM QUALITY FISH/d
/FULHAM ELECTRICAL/d
/PL RESTAURANTS/d
/BESPOKEOFFERS/d
/THAISMILE/d
/TVLICENSING/d
/WWW.SDP.COM/d
/THE LIGHT E1/d
/BASING HOUSE/d
/BUNG BUNGA/d
/PRIMARK/d
/CRABTREE/d
/ASDA/d
/NEXT RETAIL/d
/NATUZZI/d
/MIGHTYDEALS/d
/SAIN HAMMERSMITH/d
/PRIMARK/d
/CHURCHILL/d
/TRIANGLE GARAGES/d
/WAYFAIR/d
/THE BLUE ELEPHANT/d
/THE SMILE CLINIC/d
/POUNDWORLD/d
/PARCELFORCE/d
/LBHF CAR POUND/d
/AGL.Women Can’t Serve/d
/WAITROSE FULHAM PALACE/d
/TOOLSTATION/d
/EPOCH.COM/d
/Redfinger Trading/d
/MARKS & SPENCER HAMMERSMITH GBR/d
/M&S E COMMERCE/d
/CHEMISTDIRECTSC/d
/SPACESLIDE/d
/COOLBLADES/d
/NEWEGG/d
/TLC SOUTHERN/d
/BAGPORT UK LTD/d
/PORTICO (MIDLAND) LTD/d
/SEARCYS LONDON/d
/AUGUSTINE KITCHEN LONDON SW11/d
/SUZU.*LONDON W6/d
/MARKS.*SPENCER.*HAMMERSMITH/d
/IGF.*LONDON/d
/HENRYS CAFE BAR/d
/Betway/d
/BETFAIR/d
/DYSON LIMITED/d
/LEICESTER ARMS/d
/FOLKESTONE/d
/SELFRIDGES/d
/SNOW CENTRE/d
/MOUNTAIN WAREHOUSE/d
/STOCKWELL MOTOR/d
/TOP SHOP/d
/HALFORDS/d
/ECP LTD BRIXTON/d
/HOUSE OF FRASER/d
/CARBON/d
/ASC CONSULTANTS/d
/ALDO/d
/H&M/d
/SAKE NO HANA/d
/RIVER ISLAND/d
/CARPENTERS ARMS/d
/DEBENHAMS/d
/GLASSBLOWER/d
/Lay Profit Hunter/d
/THEFRAGRANCESHOP/d
/LA PIETRA/d
/LAS IGUANAS/d
/MINORIES/d
/ABOKADO/d
/DISPENSARY/d
/EAT/d
/ZEPPELIN/d
/TRADE LONDON/d
/JOHN LEWIS PETER JONES/d
/MOO GRILL/d
/JAPANESE CANTEEN/d
/MARY JANES/d
/TICKETS/d
/LUPITA/d
/JAMIE OLIVER/d
/DUKE OF SOMERSET/d
/PHO LONDON/d
/HM PASSPORT OFFICE/d
/BYRON HAMBURGERS/d
/awork.co.uk/d
/BLACK LION/d
/CRISIS/d
/LONGSHOT/d
/CARGO LONDON/d
/WAGAMAMA/d
/TAYLOR ST BARISTAS/d
/HAPPY DAYS RESTAURANT/d
/SMART DRY CLEANERS/d
/THE OLD IVY/d
/NANDOS/d
/THE FLYING CHARIOT/d
/HOOP & GRAPES/d
/BROADWALK CAFE/d
/CH&CO CATERING LTD HAMPTON/d
/HISTORIC ROYAL PAL/d
/CAFE BOHEME/d
/MAEDAH GRILL/d
/WASABI/d
/BREWDOG/d
/YO! SUSHI/d
/OVERLIMIT/d
/SMITHS-SPITALFIELD/d
/B & Q/d
/BAROSSA/d



# food
/CAY TRE SOHO/d
/FRESH AND WILD/d
/TARO/d
/MCDONALDS/d
/MARKS & SPENCER/d
/COMPTOIR LIBANAIS/d
/THE LYRIC/d
/PRET A MANGER/d
/BURY FOOD AND WINE/d
/GLASSHOUSE/d
/THE CROWN/d
/YOOBI/d
/VAPIANO/d
/EL CAMION/d
/BOOTS FULHAM/d
/WHYTE & BROWN/d
/OTTOMAN/d
/WAHACA/d
/BARWARK/d
/SOUPE DU JOUR/d
/CHILLI SHAKER/d
/ZARA/d
/LINGO/d
/COLBERT/d
/RASA SAYANG/d
/ROYAL DRAGON/d
/MAYA/d
/DINER/d
/DICKENS INN/d
/ALLBEAUTY/d
/SHORYU/d
/SUBWAY/d
/BREW LONDON/d
/BLUE POSTS/d
/FIVE GUYS/d
/FCO ITALY/d
/BravoFly/d
/APOSTROPHE/d
/THAI SQUARE/d
/ROCK INSURANCE/d
/BAMBOO BASKET/d
/WAITROSE/d
/NORWEGIAN/d
/OPODO/d
/C. T. DENT/d
/WALLSANDFLOORS/d
/THE EXCHANGE/d
/ROOSTERS/d
/COSTA COFFEE/d
/VICTORIA & ALBERT BAR/d
/WH SMITH TRAVEL/d
/THE FOX/d
/CRESTOAKS LTD/d
/Rapidlane/d
/THE RIVERFRONT/d
/TFL.*PENALTY/d
/THCL LONDON/d
/ECCO SHOP/d
/GATHER AND GATHER/d
/BOOTS/d

# hair
/SOTIRA GEORGIO/d

# check the cycling receipts
/MERLINCYCLES/d
/CHAIN REACTION CYCLES/d
/PROBIKEKIT/d
/RAKUTEN/d

# explicit excludes
/27480570.*EATTALY/d
/77144389.*O’NEILLS BROMLEY/d
/08280682.*PARTRIDGE/d
/08280807.*PARTRIDGE/d
/08280724.*PARTRIDGE/d
/64339871.*BELGO.*BROMLEY/d
/66581803.*BELGO.*BROMLEY/d

/^$/d

#/OYSTER AUTOTOPUP/s/$/travel/

#/FASTHOSTS/
# car charger JOURNOVA.COM 6508003855 CA


# 64084862	  BELGO BROMLEY - leaving drinks


















