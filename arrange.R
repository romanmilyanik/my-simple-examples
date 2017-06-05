library(dplyr)

birth <- c("1989-12-01", "1992-11-07", "1991-12-29", "1996-05-04", "1989-12-02", "1992-11-06")
people <- c("Roman", "Zoriana", "Taras", "Ura", "Roman_2", "Zoriana_2")
age <- c(27, 24, 25, 21, 27, 24)
experience <- c(5, 2, 3, 0, 5, 2)
id <- c(1, 2, 3, 4, 5, 6)

frame_0 <- data.frame(id, people, birth, age, experience)
# id  people      birth        age      experience
# 1   Roman       1989-12-01    27          5
# 2   Zoriana     1992-11-07    24          2
# 3   Taras       1991-12-29    25          3
# 4   Ura         1996-05-04    21          0
# 5   Roman_2     1989-12-02    27          5
# 6   Zoriana_2   1992-11-06    24          2

arrange(frame_0, age, birth)
# id  people      birth        age      experience
# 4   Ura         1996-05-04    21          0
# 6   Zoriana_2   1992-11-06    24          2
# 2   Zoriana     1992-11-07    24          2
# 3   Taras       1991-12-29    25          3
# 1   Roman       1989-12-01    27          5
# 5   Roman_2     1989-12-02    27          5

arrange(frame_0, age, desc(birth))
# id  people      birth        age      experience
# 4   Ura         1996-05-04    21          0
# 2   Zoriana     1992-11-07    24          2
# 6   Zoriana_2   1992-11-06    24          2
# 3   Taras       1991-12-29    25          3
# 5   Roman_2     1989-12-02    27          5
# 1   Roman       1989-12-01    27          5

arrange(frame_0, desc(people))
# id  people      birth        age      experience
# 6   Zoriana_2   1992-11-06    24          2
# 2   Zoriana     1992-11-07    24          2
# 4   Ura         1996-05-04    21          0
# 3   Taras       1991-12-29    25          3
# 5   Roman_2     1989-12-02    27          5
# 1   Roman       1989-12-01    27          5

arrange(frame_0, desc(experience), desc(birth))
# id  people      birth        age      experience
# 5   Roman_2     1989-12-02    27          5
# 1   Roman       1989-12-01    27          5
# 3   Taras       1991-12-29    25          3
# 2   Zoriana     1992-11-07    24          2
# 6   Zoriana_2   1992-11-06    24          2
# 4   Ura         1996-05-04    21          0