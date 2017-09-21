a <- data.frame(city = c("Istanbul", "Lviv", "Kyiv"),
                country = c("Turkey", "Ukraine", "Ukraine"),
                val.1 = c(8, 5, 4))
#       city   country    val.1
#   Istanbul   Turkey      8
#       Lviv   Ukraine     5
#       Kyiv   Ukraine     4

a$amount <- as.factor(ifelse(a$val.1 <= 4,"< 5",
                             ifelse(a$val.1 <= 7 ,"5 - 7",
                                    "> 7")))
#       city   country   val.1  amount
#   Istanbul   Turkey      8    > 7
#       Lviv   Ukraine     5    5 - 7
#       Kyiv   Ukraine     4    < 5

a$est <- ifelse(a$city == "Lviv", "Lviv", "not_Lviv")
#       city   country   val.1   est
#   Istanbul   Turkey      8     not_Lviv
#       Lviv   Ukraine     5     Lviv
#       Kyiv   Ukraine     4     not_Lviv

a$land <- ifelse(a$city == "Lviv" & a$country == "Ukraine", "land", "not_land")
#       city   country   val.1   land
#   Istanbul   Turkey      8     not_land
#       Lviv   Ukraine     5     land
#       Kyiv   Ukraine     4     not_land

a$land2 <- ifelse(a$city == "Lviv" | a$country == "Ukraine", "land", "not_land")
#       city   country   val.1   land2
#   Istanbul   Turkey      8     not_land
#       Lviv   Ukraine     5     land
#       Kyiv   Ukraine     4     land
