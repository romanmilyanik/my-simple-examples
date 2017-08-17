library(tibble)
library(tidyr)

taba <- tibble(id = c("1!", "2!", "3!"),
               country = c("Ukraine", "USA", "Canada"),
               pat = c("F:/milyanik/UKR", "F:/milyanik/USA", "F:/milyanik/CAN"))
#  id   country      pat
#  1!   Ukraine     F:/milyanik/UKR
#  2!       USA     F:/milyanik/USA
#  3!    Canada     F:/milyanik/CAN

taba_1 <- separate(taba, pat, into = c("disk", "user", "folder"), sep = "/")
#  id  country   disk     user        folder
#  1!  Ukraine    F:      milyanik    UKR
#  2!      USA    F:      milyanik    USA
#  3!   Canada    F:      milyanik    CAN

taba_2 <- separate(taba, pat, into = c("disk", "folders"), sep = 1)
#  id  country   disk        folders
#  1!  Ukraine     F     :/milyanik/UKR
#  2!      USA     F     :/milyanik/USA
#  3!   Canada     F     :/milyanik/CAN

taba_3 <- separate(taba, pat, into = c("disk", "folder", "country"), sep = c(2, 12))
#  id  country   disk        folder     country
#  1!  Ukraine     F:     /milyanik/     UKR
#  2!      USA     F:     /milyanik/     USA
#  3!   Canada     F:     /milyanik/     CAN

taba_4 <- separate(taba, pat, into = c("disk", "folder", "country"), sep = c(-13, -5))
#  id  country    disk      folder    country
#  1!  Ukraine     F:/     milyanik    /UKR
#  2!      USA     F:/     milyanik    /USA
#  3!   Canada     F:/     milyanik    /CAN

# ***************************************************************************************************** #
taba_new <- tibble(id = c("1!", "2!", "3!"),
                   country = c("Ukraine", "USA", "Canada"),
                   pat = c("F:/milyanik/UKR/home", "F:/milyanik/USA", "F:/milyanik/CAN"))
#  id   country    pat
#  1!   Ukraine    F:/milyanik/UKR/home
#  2!       USA    F:/milyanik/USA
#  3!    Canada    F:/milyanik/CAN

taba_new_1 <- separate(taba_new, pat, into = c("one", "two", "three", "four", "five"), sep = "/")
#  id  country    one      two       three   four    five
#  1!  Ukraine    F:     milyanik    UKR     home    <NA>
#  2!      USA    F:     milyanik    USA     <NA>    <NA>
#  3!   Canada    F:     milyanik    CAN     <NA>    <NA>

taba_new_2 <- separate(taba_new, pat, into = c("one", "two", "three"), sep = "/")
#  id  country    one      two       three
#  1!  Ukraine    F:     milyanik    UKR
#  2!      USA    F:     milyanik    USA
#  3!   Canada    F:     milyanik    CAN
