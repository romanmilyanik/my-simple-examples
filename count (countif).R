library(dplyr)

a <- data.frame(city = c("Istanbul", "Istanbul", "Istanbul", "Lviv", "Istanbul", "Kyiv", "Kyiv", "Kyiv"),
                tools = c(1, 4, 2, 2, 4, 1, 1, 2))
#   city         tools
#   Istanbul     1
#   Istanbul     4
#   Istanbul     2
#       Lviv     2
#   Istanbul     4
#       Kyiv     1
#       Kyiv     1
#       Kyiv     2

a_1 <- count(a, city)
#       city     n
#   Istanbul     4
#       Kyiv     3
#       Lviv     1

a_2 <- count(a, city, tools)
#       city   tools   n
#   Istanbul     1     1
#   Istanbul     2     1
#   Istanbul     4     2
#       Kyiv     1     2
#       Kyiv     2     1
#       Lviv     2     1

