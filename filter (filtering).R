library(dplyr)

a <- data.frame(city = c("Istanbul", "Lviv", "Istanbul", "Kyiv"),
                country = c("Turkey", "Ukraine", "Tatary", "Ukraine"),
                val.1 = c(5, 8, 4, 2))
#       city   country   val.1
#   Istanbul   Turkey      5
#       Lviv   Ukraine     8
#   Istanbul   Tatary      4
#       Kyiv   Ukraine     2

b <- data.frame(filter(a, city == "Istanbul"))
#       city   country   val.1
#   Istanbul   Turkey      5
#   Istanbul   Tatary      4

e <- data.frame(filter(a, country == "Ukraine", city != "Kyiv"))
#       city   country   val.1
#       Lviv   Ukraine     8

                              add <- data.frame(outliers = c("Istanbul", "York"))  # other data.frame
                              #   outliers
                              #   Istanbul
                              #       York

d <- data.frame(filter(a, city %in% add$outliers))
#    city       country  val.1
#    Istanbul   Turkey     5
#    Istanbul   Tatary     4

f <- data.frame(filter(a, !city %in% add$outliers))
#        city   country  val.1
#        Lviv   Ukraine    8
#        Kyiv   Ukraine    2

