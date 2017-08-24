library(tibble)
library(tidyr)

qvartals <- tibble(year = c(2015, NA, NA, NA, 2016, NA, NA, NA),
                   kvartal = c( 1, 2, 3, 4, 1, 2, 3, 4))
#   year   kvartal
#   2015     1
#     NA     2
#     NA     3
#     NA     4
#   2016     1
#     NA     2
#     NA     3
#     NA     4

qvartals_1 <- qvartals %>% fill(year)
#   year    kvartal
#   2015     1
#   2015     2
#   2015     3
#   2015     4
#   2016     1
#   2016     2
#   2016     3
#   2016     4

qvartals_2 <- qvartals %>% fill(year, .direction = "up")
# year      kvartal
#   2015     1
#   2016     2
#   2016     3
#   2016     4
#   2016     1
#     NA     2
#     NA     3
#     NA     4
