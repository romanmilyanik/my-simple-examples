library(stringr)

a <- data.frame(city = c("Istanbul", "Lviv", "Kyiv"),
                country = c("Turkey", "Ukraine", "Ukraine"))
#  city      country
#  Istanbul  Turkey
#  Lviv      Ukraine
#  Kyiv      Ukraine

a$len_city <- str_length(a$city)
#  city      country     len_city
#  Istanbul  Turkey         8
#  Lviv      Ukraine        4
#  Kyiv      Ukraine        4
