library(tidyr)
library(tibble)

taba <- tibble(name = c("Istanbul", "Kyiv", "Lviv"),
               `2016` = c(26, 23, 24),
               `2017` = c(27, 24, 25))
 #    name      `2016` `2017`
 #   Istanbul     26     27
 #   Kyiv         23     24
 #   Lviv         24     25

taba_1 <- gather(taba, `2016`, `2017`, key = "year", value = "cases")
 #    name      year   cases
 #   Istanbul   2016    26
 #   Kyiv       2016    23
 #   Lviv       2016    24
 #   Istanbul   2017    27
 #   Kyiv       2017    24
 #   Lviv       2017    25

### ### --- ### ### --- ### ### --- ### ### --- ### ### --- ### ### --- ### ### --- ### ### --- ### ### --- ### ### --- ### ### --- ### ### --- ### ### --- ### ### ---

taba_2 <- data.frame(name = c("Afghanistan", "Afghanistan", "Afghanistan", "Afghanistan", "Brazil", "Brazil", "Brazil", "Brazil", "China", "China", "China", "China"),
                     year = c(2016, 2016, 2017, 2017, 2016, 2016, 2017, 2017, 2016, 2016, 2017, 2017),
                 key = c("cases", "population", "cases", "population", "cases", "population", "cases", "population", "cases", "population", "cases", "population"),
                 value = c(1, 100, 2, 200, 3, 300, 4, 400, 5, 500, 6, 600))
  #        name  year         key   value
  # Afghanistan  2016       cases       1
  # Afghanistan  2016  population     100
  # Afghanistan  2017       cases       2
  # Afghanistan  2017  population     200
  #      Brazil  2016       cases       3
  #      Brazil  2016  population     300
  #      Brazil  2017       cases       4
  #      Brazil  2017  population     400
  #       China  2016       cases       5
  #       China  2016  population     500
  #       China  2017       cases       6
  #       China  2017  population     600
        
spread(taba_2, key, value)
 #        name   year   cases  population
 # Afghanistan   2016     1        100
 # Afghanistan   2017     2        200
 #      Brazil   2016     3        300
 #      Brazil   2017     4        400
 #       China   2016     5        500
 #       China   2017     6        600



