library(tibble)
library(tidyr)
library(stringr)

taba <- tibble(numb = c("I", "II", "III", "IV", "V", "VI"),
               country = c("UKRe", "UKRe", "USA", "USA", "BELa", "BELa"))
  #   numb    country
  #     I     UKRe
  #    II     UKRe
  #   III      USA
  #    IV      USA
  #     V     BELa
  #    VI     BELa

taba$America <- str_replace(taba$country, "A", "America")
#   numb   country    America
#      I    UKRe      UKRe
#     II    UKRe      UKRe
#    III     USA      USAmerica
#     IV     USA      USAmerica
#      V    BELa      BELa
#     VI    BELa      BELa

taba$noUSA <- str_replace(taba$country, "USA", "non USA")
#   numb   country    noUSA
#      I    UKRe      UKRe
#     II    UKRe      UKRe
#    III     USA      non USA
#     IV     USA      non USA
#      V    BELa      BELa
#     VI    BELa      BELa

taba$country[taba$country == "UKRe"] <- "noUKR"
#   numb     country
#      I     noUKR
#     II     noUKR
#    III     USA
#     IV     USA
#      V     BELa
#     VI     BELa