  library(readxl)
  library(dplyr)
  w <- read_excel("D:/file.xlsx")
# Name	     POP
# Roman	      1
# Roman	      2
# Ura	        1
# Zoryana    	1
# Ura	        2
# Taras     	1
# Roman     	1
# Ura	        1
# Taras     	1
# Zoryana   	1
# Ivan      	1
# Ivan      	2

# видалити рядки де значення в 1 колонці дублюються
  w2 <- w %>% distinct(Name, .keep_all = T)   # .keep_all = T - залишити всі стовпці
# Name     POP
# Roman     1
# Ura       1
# Zoryana   1
# Taras     1
# Ivan      1

# залишити лише унікальні рядки
  w3 <- w %>% distinct
# Name       POP
# Roman       1
# Roman       2
# Ura         1
# Zoryana     1
# Ura         2
# Taras       1
# Ivan        1
# Ivan        2

# more at:
# http://stackoverflow.com/questions/13967063/remove-duplicate-rows-in-r

