# zvedena tabluzia na kilkist'

n <- data.frame(Name = c("Roman", "Roman", "Roman", "Roman", "Taras", "Taras", "Taras", "Ura", "Ura", "Ura"),
                Dedault = c("Good", "Good", "Ind", "Bad", "Bad", "Bad", "Bad", "Good", "Ind", "Ind"))
  #  Name    Dedault
  # Roman    Good
  # Roman    Good
  # Roman     Ind
  # Roman     Bad
  # Taras     Bad
  # Taras     Bad
  # Taras     Bad
  #   Ura    Good
  #   Ura     Ind
  #   Ura     Ind

n$BAD <- ifelse(n$Dedault == "Bad", 1, 0)
n$GOOD <- ifelse(n$Dedault == "Good", 1, 0)
n$IND <- ifelse(n$Dedault == "Ind", 1, 0)

n1 <- data.frame(table(n$Name, n$BAD))
n1[n1 == 0] <- NA
n1 <- na.omit(n1)

n2 <- data.frame(table(n$Name, n$IND))
n2[n2 == 0] <- NA
n2 <- na.omit(n2)

n3 <- data.frame(table(n$Name, n$GOOD))
n3[n3 == 0] <- NA
n3 <- na.omit(n3)

new_n <- data.frame(unique(n$Name))
names(new_n) <- "Name"

new_n$BAD <- n1$Freq[match(new_n$Name, n1$Var1)]
new_n$IND <- n2$Freq[match(new_n$Name, n2$Var1)]
new_n$GOOD <- n3$Freq[match(new_n$Name, n3$Var1)]

new_n$BAD[which(is.na(new_n$BAD))] <- 0
new_n$IND[which(is.na(new_n$IND))] <- 0
new_n$GOOD[which(is.na(new_n$GOOD))] <- 0

 #  Name  BAD IND GOOD
 # Roman   1   1    2
 # Taras   3   0    0
 #   Ura   0   2    1


