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

a0 <- data.frame(table(a$city, a$tools))
#       Var1    Var2  Freq
#   Istanbul     1     1
#       Kyiv     1     2
#       Lviv     1     0
#   Istanbul     2     1
#       Kyiv     2     1
#       Lviv     2     1
#   Istanbul     4     2
#       Kyiv     4     0
#       Lviv     4     0

a0$Freq[a0$Freq == 0] <- NA
na.omit(a0)
#       Var1   Var2   Freq
#   Istanbul     1     1
#       Kyiv     1     2
#   Istanbul     2     1
#       Kyiv     2     1
#       Lviv     2     1
#   Istanbul     4     2
