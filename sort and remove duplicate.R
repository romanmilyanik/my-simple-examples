birth <- c("1989-12-01", "1992-11-07", "1991-12-29", "1996-05-04", "1989-12-02", "1992-11-06")
people <- c("Roman", "Zoriana", "Taras", "Ura", "Roman", "Zoriana")

taba <- data.frame(people, birth)

taba$people <- as.character(taba$people)
taba$birth <- as.Date(taba$birth)
#   > taba
#     people      birth
#     Roman       1989-12-01
#     Zoriana     1992-11-07
#     Taras       1991-12-29
#     Ura         1996-05-04
#     Roman       1989-12-02
#     Zoriana     1992-11-06

taba1 <- taba[order(taba$people, taba$birth, decreasing = T),]   # sort decr 2
#   > taba1
#     people      birth
#     Zoriana     1992-11-07
#     Zoriana     1992-11-06
#     Ura         1996-05-04
#     Taras       1991-12-29
#     Roman       1989-12-02
#     Roman       1989-12-01

taba2 <- taba[order(taba$people, decreasing = T),]               # sort decr 1
#   > taba2
#     people      birth
#     Zoriana     1992-11-07
#     Zoriana     1992-11-06
#     Ura         1996-05-04
#     Taras       1991-12-29
#     Roman       1989-12-01
#     Roman       1989-12-02

taba3 <- taba[!duplicated(taba$people),]   # del double
#   > taba3
#     people      birth
#     Roman       1989-12-01
#     Zoriana     1992-11-07
#     Taras       1991-12-29
#     Ura         1996-05-04

# sort & clean ****************************************
library(dplyr)
taba4 <- taba %>%
  group_by(people) %>%
  summarise(birth = max(birth))
#   people      birth
#   <chr>       <date>
#   Roman       1989-12-02
#   Taras       1991-12-29
#   Ura         1996-05-04
#   Zoriana     1992-11-07

