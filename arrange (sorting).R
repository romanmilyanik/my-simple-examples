library(dplyr)

a <- data.frame(id = c(1, 2, 3, 4),
                city = c("Istanbul", "Lviv", "Kyiv", "Rivne"),
                date = c("2014-01-01", "2012-01-01", "2014-01-01", "2017-01-01"),
                number = c(1200, 1000, 1500, 700))
#  id      city       date     number
#  1   Istanbul   2014-01-01   1200
#  2       Lviv   2012-01-01   1000
#  3       Kyiv   2014-01-01   1500
#  4      Rivne   2017-01-01    700

a_1 <- arrange(a, date, number)
#  id      city       date     number
#  2       Lviv   2012-01-01   1000
#  1   Istanbul   2014-01-01   1200
#  3       Kyiv   2014-01-01   1500
#  4      Rivne   2017-01-01    700

a_2 <- arrange(a, date, desc(number))
#  id      city       date     number
#  2       Lviv   2012-01-01   1000
#  3       Kyiv   2014-01-01   1500
#  1   Istanbul   2014-01-01   1200
#  4      Rivne   2017-01-01    700

a_3 <- arrange(a, desc(number))
#  id      city       date     number
#  3       Kyiv   2014-01-01   1500
#  1   Istanbul   2014-01-01   1200
#  2       Lviv   2012-01-01   1000
#  4      Rivne   2017-01-01    700

a_4 <- arrange(a, city)
#  id      city       date     number
#  1   Istanbul   2014-01-01   1200
#  3       Kyiv   2014-01-01   1500
#  2       Lviv   2012-01-01   1000
#  4      Rivne   2017-01-01    700

a_5 <- arrange(a, desc(date), desc(number))
#  id      city       date     number
#  4      Rivne   2017-01-01    700
#  3       Kyiv   2014-01-01   1500
#  1   Istanbul   2014-01-01   1200
#  2       Lviv   2012-01-01   1000


