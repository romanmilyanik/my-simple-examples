m <- data.frame(Name = c("Roman", "Roman", "Roman", "Taras", "Roman", "Ura", "Ura", "Ura"),
                     Tools = c(1, 6, 2, 2, 4, 1, 1, 2))
 #  Name   Tools
 # Roman     1
 # Roman     6
 # Roman     2
 # Taras     2
 # Roman     4
 #   Ura     1
 #   Ura     1
 #   Ura     2

m0 <- data.frame(table(m$Name))
m$count <- m0$Freq[match(m$Name, m0$Var1)]   # vlookup
rm(m0)
  # Name   Tools count
 # Roman     1     4
 # Roman     6     4
 # Roman     2     4
 # Taras     2     1
 # Roman     4     4
 #   Ura     1     3
 #   Ura     1     3
 #   Ura     2     3
