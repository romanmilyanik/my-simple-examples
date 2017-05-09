# Номер попадання значення поля в діапазон:

# example 1: --------------------------------------------------
m <- data.frame(Name = c("Roman", "Roman", "Roman", "Taras", "Roman", "Ura", "Ura", "Ura"),
                     Tools = c(1, 6, 2, 2, 4, 1, 1, 2))
 #  Name     Tools
 # Roman     1
 # Roman     6
 # Roman     2
 # Taras     2
 # Roman     4
 #   Ura     1
 #   Ura     1
 #   Ura     2

m$index <- sapply(1:length(m$Name),function(x)sum(m$Name[1:x]==m$Name[x]))
 #  Name   Tools index
 # Roman     1     1
 # Roman     6     2
 # Roman     2     3
 # Taras     2     1
 # Roman     4     4
 #   Ura     1     1
 #   Ura     1     2
 #   Ura     2     3

# example 2: -------------------------------------------------
t <- c(2, 2, 4, 5, 2, 5, 4)
index<-sapply(1:length(t),function(x)sum(t[1:x]==t[x]))
cbind(t, index)
#      t index
# [1,] 2     1
# [2,] 2     2
# [3,] 4     1
# [4,] 5     1
# [5,] 2     3
# [6,] 5     2
# [7,] 4     2

# more at:
# http://stackoverflow.com/questions/1923273/counting-the-number-of-elements-with-the-values-of-x-in-a-vector