library(stringr)

a <- data.frame(city = c("Istanbul", "Lviv", "Kyiv"),
                date = c("1989-12-01 istanbul", "1992-11-07 lviv", "1991-12-29 kyiv"))
#      city   date
#  Istanbul   1989-12-01 istanbul
#      Lviv   1992-11-07 lviv
#      Kyiv   1991-12-29 kyiv

a$year <- substr(a$date, 1, 4)
a$month <- substr(a$date, 6, 7)
a$day <- substr(a$date, 9, 10)

a$date1 <- as.Date(paste(a$year, a$month, a$day,  sep = "-"))
#      city   date                  year    month   day    date1
#  Istanbul   1989-12-01 istanbul   1989    12      01     1989-12-01
#      Lviv   1992-11-07 lviv       1992    11      07     1992-11-07
#      Kyiv   1991-12-29 kyiv       1991    12      29     1991-12-29

### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ##

library(stringr)
str_sub("romanpro", 1, 5)     # left
# "roman"
str_sub("romanpro", 3, 5)     # mid
# "man"
str_sub("romanpro", -3, -1)   # right
# "pro"
str_sub("romanpro", -3, -2)   # mid.2
# "pr"

