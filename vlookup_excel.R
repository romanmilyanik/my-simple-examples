set_1 <- data.frame(name = c("Roman", "Taras", "Ura", "Roman", "Roman", "Taras", "Taras"),
                    id = c(1, 2, 3, 1, 1, 2, 2))
# name     id
# Roman     1
# Taras     2
# Ura       3
# Roman     1
# Roman     1
# Taras     2
# Taras     2

set_2 <- data.frame(id = c(2, 3, 1, 1, 1, 2, 2),
                    numb = c(11, 22, 33, 44, 55, 66, 77),
                    other = c("e", "t", "u", "w", "b", "s", "q"))
# id   numb   other
# 2     11      e
# 3     22      t
# 1     33      u
# 1     44      w
# 1     55      b
# 2     66      s
# 2     77      q

set_1$numb <- set_2$numb[match(set_1$id, set_2$id)]
# name      id    numb
# Roman      1     33
# Taras      2     11
# Ura        3     22
# Roman      1     33
# Roman      1     33
# Taras      2     11
# Taras      2     11


# more at:
# https://stat.ethz.ch/pipermail/r-help/2008-March/157899.html
