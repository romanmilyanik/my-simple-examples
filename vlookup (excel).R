a <- data.frame(city = c("Istanbul", "Lviv", "Kyiv", "Lviv", "Lviv", "Kyiv", "Kyiv"),
                id = c(1, 2, 3, 2, 2, 3, 3))
#      city   id
#  Istanbul   1
#      Lviv   2
#      Kyiv   3
#      Lviv   2
#      Lviv   2
#      Kyiv   3
#      Kyiv   3

b <- data.frame(id = c(2, 3, 1, 1, 1, 2, 2),
                numb = c(11, 22, 33, 44, 55, 66, 77))
#   id   numb
#   2    11
#   3    22
#   1    33
#   1    44
#   1    55
#   2    66
#   2    77

a$numb <- b$numb[match(a$id, b$id)]
#      city   id  numb
#  Istanbul   1   33
#      Lviv   2   11
#      Kyiv   3   22
#      Lviv   2   11
#      Lviv   2   11
#      Kyiv   3   22
#      Kyiv   3   22

# more at:
# https://stat.ethz.ch/pipermail/r-help/2008-March/157899.html
