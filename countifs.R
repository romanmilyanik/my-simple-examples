m <- data.frame(Name = c("Roman", "Roman", "Roman", "Taras", "Roman", "Ura", "Ura", "Ura"),
                     Tools = c(6, 6, 2, 2, 4, 1, 1, 2),
                department = c("dkr", "dkr", "dkr", "opd", "dkr", "uni", "uni", "uni"))
 #  Name   Tools   department
 # Roman     6        dkr
 # Roman     6        dkr
 # Roman     2        dkr
 # Taras     2        opd
 # Roman     4        dkr
 #   Ura     1        uni
 #   Ura     1        uni
 #   Ura     2        uni

m0 <- data.frame(table(m$Name, m$Tools))
  #  Var1   Var2 Freq
  # Roman    1    0
  # Taras    1    0
  #   Ura    1    2
  # Roman    2    1
  # Taras    2    1
  #   Ura    2    1
  # Roman    4    1
  # Taras    4    0
  #   Ura    4    0
  # Roman    6    2
  # Taras    6    0
  #   Ura    6    0

m0$Freq[m0$Freq==0] <- NA
na.omit(m0)
  #  Var1  Var2 Freq
  #   Ura    1    2
  # Roman    2    1
  # Taras    2    1
  #   Ura    2    1
  # Roman    4    1
  # Roman    6    2


