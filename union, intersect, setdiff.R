library(dplyr)

a <- data.frame(city = c("Istanbul", "Lviv", "Istanbul", "Kyiv"),
                country = c("Turkey", "Ukraine", "Turkey_2", "Ukraine"))
#      city   country
#  Istanbul   Turkey
#      Lviv   Ukraine
#  Istanbul   Turkey_2
#      Kyiv   Ukraine

b <- data.frame(city = c("Istanbul", "Dnipro", "Istanbul", "Kyiv"),
                country = c("Turkey", "Ukraine", "Turkey_3", "Ukraine"))
#      city   country
#  Istanbul   Turkey
#    Dnipro   Ukraine
#  Istanbul   Turkey_3
#      Kyiv   Ukraine

intersect <- intersect(a, b)
#      city   country
#  Istanbul   Turkey
#      Kyiv   Ukraine

union <- union(a, b)
#      city   country
#      Kyiv   Ukraine
#    Dnipro   Ukraine
#  Istanbul   Turkey_2
#  Istanbul   Turkey_3
#      Lviv   Ukraine
#  Istanbul   Turkey

setdiff <- setdiff(a, b)
#      city   country
#      Lviv   Ukraine
#  Istanbul   Turkey_2

setdiff_2 <- setdiff(b, a)
#      city   country
#    Dnipro   Ukraine
#  Istanbul   Turkey_3
