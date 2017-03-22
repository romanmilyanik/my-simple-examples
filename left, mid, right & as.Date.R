 # taba:
 #  people    birth
 #   Roman    1989-12-01 roman
 # Zoriana    1992-11-07 zoriana
 #   Taras    1991-12-29 taras
 #     Ura    1996-05-04 ura

taba$year <- substr(taba$birth, 1, 4)
taba$month <- substr(taba$birth, 6, 7)
taba$day <- substr(taba$birth, 9, 10)

taba$date <- paste(taba$day, taba$month, taba$year, sep = ".")

 #  people   birth year                month  day   date
 #   Roman   1989-12-01 roman 1989     12     01    01.12.1989
 # Zoriana   1992-11-07 zoriana 1992   11     07    07.11.1992
 #   Taras   1991-12-29 taras 1991     12     29    29.12.1991
 #     Ura   1996-05-04 ura 1996       05     04    04.05.1996

taba$date1 <- paste(taba$year, taba$month, taba$day, sep = "-")
taba$date1 <- as.Date(taba$date1)

#   people   birth year                month  day   date         date1
#    Roman   1989-12-01 roman 1989     12     01    01.12.1989   1989-12-01
#  Zoriana   1992-11-07 zoriana 1992   11     07    07.11.1992   1992-11-07
#    Taras   1991-12-29 taras 1991     12     29    29.12.1991   1991-12-29
#      Ura   1996-05-04 ura 1996       05     04    04.05.1996   1996-05-04

taba$date_plus <- taba$date1 + 3
taba$difdate <- taba$date_plus - taba$date1

#   people               birth year  month  day        date       date1   date_plus  difdate
#    Roman    1989-12-01 roman 1989     12   01  01.12.1989  1989-12-01  1989-12-04   3 days
#  Zoriana  1992-11-07 zoriana 1992     11   07  07.11.1992  1992-11-07  1992-11-10   3 days
#    Taras    1991-12-29 taras 1991     12   29  29.12.1991  1991-12-29  1992-01-01   3 days
#      Ura      1996-05-04 ura 1996     05   04  04.05.1996  1996-05-04  1996-05-07   3 days


library(stringr)
str_sub("romanpro", 1, 5)     # left
# "roman"
str_sub("romanpro", 3, 5)     # mid
# "man"
str_sub("romanpro", -3, -1)   # right
# "pro"
str_sub("romanpro", -3, -2)   # mid.2
# "pr"
