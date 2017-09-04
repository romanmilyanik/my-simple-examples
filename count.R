library(dplyr)

taba <- data.frame(Name = c("Roman", "Roman", "Roman", "Taras", "Roman", "Ura", "Ura", "Ura"),
                Tools = c(1, 4, 2, 2, 4, 1, 1, 2))
 #   Name   Tools
 #  Roman     1
 #  Roman     4
 #  Roman     2
 #  Taras     2
 #  Roman     4
 #    Ura     1
 #    Ura     1
 #    Ura     2

taba1 <- count(taba, Name)
  #  Name     n
  # Roman     4
  # Taras     1
  #   Ura     3

taba2 <- taba %>%
            count(Name) %>%
            filter(n > 1)
  #  Name     n
  # Roman     4
  #   Ura     3

taba3 <- count(taba, Name, Tools)
#   Name   Tools    n
#  Roman     1      1
#  Roman     2      1
#  Roman     4      2
#  Taras     2      1
#    Ura     1      2
#    Ura     2      1
