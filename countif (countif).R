library(dplyr)

a <- data.frame(city = c("Istanbul", "Istanbul", "Istanbul", "Lviv", "Istanbul", "Kyiv", "Kyiv", "Kyiv"),
                tools = c(1, 4, 2, 2, 4, 1, 1, 2))
#   city       tools
#   Istanbul     1
#   Istanbul     4
#   Istanbul     2
#       Lviv     2
#   Istanbul     4
#       Kyiv     1
#       Kyiv     1
#       Kyiv     2

a0 <- data.frame(table(a$city))
#       Var1     Freq
#   Istanbul     4
#       Kyiv     3
#       Lviv     1

a$count <- a0$Freq[match(a$city, a0$Var1)]   # vlookup
rm(a0)

#       city    tools  count
#   Istanbul      1      4
#   Istanbul      4      4
#   Istanbul      2      4
#       Lviv      2      1
#   Istanbul      4      4
#       Kyiv      1      3
#       Kyiv      1      3
#       Kyiv      2      3

