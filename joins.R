library(dplyr)

a <- data.frame(nunb = c(1, 2, 3, 4, 5),
                     city = c("Istanbul", "Lviv", "Kyiv", "Kyiv", "Minsk"))
#  nunb  city
#  1     Istanbul
#  2     Lviv
#  3     Kyiv
#  4     Kyiv
#  5     Minsk

b <- data.frame(city = c("Istanbul", "Istanbul", "Lviv", "Kyiv", "Kyiv", "Ankara", "London"),
                country = c("Turkey", "Turkey", "Ukraine", "Ukraine", "Ukraine", "Turkey", "UK"))
#      city    country
#  Istanbul    Turkey
#  Istanbul    Turkey
#      Lviv    Ukraine
#      Kyiv    Ukraine
#      Kyiv    Ukraine
#    Ankara    Turkey
#    London    UK

#### left_join ####
left <- left_join(a, b, by = "city")
#    nunb     city   country
#    1    Istanbul    Turkey
#    1    Istanbul    Turkey
#    2        Lviv   Ukraine
#    3        Kyiv   Ukraine
#    3        Kyiv   Ukraine
#    4        Kyiv   Ukraine
#    4        Kyiv   Ukraine
#    5       Minsk      <NA>
#####

#### right_join ####
right <- right_join(a, b, by = "city")
#  nunb      city   country
#     1  Istanbul    Turkey
#     1  Istanbul    Turkey
#     2      Lviv   Ukraine
#     3      Kyiv   Ukraine
#     4      Kyiv   Ukraine
#     3      Kyiv   Ukraine
#     4      Kyiv   Ukraine
#    NA    Ankara    Turkey
#    NA    London        UK
#####

#### inner_join ####
inner <- inner_join(a, b, by = "city")
# nunb     city   country
#   1  Istanbul    Turkey
#   1  Istanbul    Turkey
#   2      Lviv   Ukraine
#   3      Kyiv   Ukraine
#   3      Kyiv   Ukraine
#   4      Kyiv   Ukraine
#   4      Kyiv   Ukraine
#####

#### full_join ####
full <- full_join(a, b, by = "city")
#  nunb       city   country
#     1   Istanbul    Turkey
#     1   Istanbul    Turkey
#     2       Lviv   Ukraine
#     3       Kyiv   Ukraine
#     3       Kyiv   Ukraine
#     4       Kyiv   Ukraine
#     4       Kyiv   Ukraine
#     5      Minsk      <NA>
#    NA     Ankara    Turkey
#    NA     London        UK
#####

#### semi_join ####
semi_join <- semi_join(a, b)
#  nunb      city
#     1  Istanbul
#     2      Lviv
#     3      Kyiv
#     4      Kyiv
#####

#### semi_join2 ####
semi_join2 <- semi_join(b, a)
#      city   country
#  Istanbul   Turkey
#  Istanbul   Turkey
#      Lviv   Ukraine
#      Kyiv   Ukraine
#      Kyiv   Ukraine
#####

#### anti_join ####
anti_join <- anti_join(a, b)
# nunb    city
#    5   Minsk
#####

#### anti_join2 ####
anti_join2 <- anti_join(b, a)
#   city      country
#   Ankara    Turkey
#   London    UK
#####

################################## Other Implementations ################################## 
# merge() can perform all four types of mutating join:
#  dplyr                                 merge
#  inner_join(x, y)                      merge(x, y)
#  left_join(x, y)                       merge(x, y, all.x = TRUE)
#  right_join(x, y)                      merge(x, y, all.y = TRUE),
#  full_join(x, y)                       merge(x, y, all.x = TRUE, all.y = TRUE)
