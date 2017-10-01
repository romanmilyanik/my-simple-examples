library(dplyr)

a <- data.frame(city = c("Istanbul", "Lviv", "Istanbul", "Kyiv", "London", "Lviv"),
                country = c("Turkey", "Ukraine", "Turkey_2", "Ukraine", "UK", "Ukraine_2"))
#      city   country
#  Istanbul   Turkey
#      Lviv   Ukraine
#  Istanbul   Turkey_2
#      Kyiv   Ukraine
#    London   UK
#      Lviv   Ukraine_2

b <- data.frame(city = c("Istanbul", "Lviv", "Kyiv", "Lviv"))
#      city
#  Istanbul
#      Lviv
#      Kyiv
#      Lviv

c <- left_join(b, unique(a[,c("city", "country")]))
#      city    country
#  Istanbul    Turkey
#  Istanbul    Turkey_2
#      Lviv    Ukraine
#      Lviv    Ukraine_2
#      Kyiv    Ukraine
#      Lviv    Ukraine
#      Lviv    Ukraine_2

###---###---###---###---###---###---###---###---###---###---###---###---###---###---###---###
library(dplyr)

a <- data.frame(city = c("Istanbul", "Lviv", "Istanbul", "Kyiv", "London", "Lviv"),
                country = c("Turkey", "Ukraine", "Turkey", "Ukraine", "UK", "Ukraine"))
#      city   country
#  Istanbul   Turkey
#      Lviv   Ukraine
#  Istanbul   Turkey
#      Kyiv   Ukraine
#    London   UK
#      Lviv   Ukraine

b <- data.frame(city = c("Istanbul", "Lviv", "Kyiv", "Lviv"))
#      city
#  Istanbul
#      Lviv
#      Kyiv
#      Lviv

c <- left_join(b, unique(a[,c("city", "country")]))
#      city    country
#  Istanbul    Turkey
#      Lviv    Ukraine
#      Kyiv    Ukraine
#      Lviv    Ukraine
