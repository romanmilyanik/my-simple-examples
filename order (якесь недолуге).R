library(readxl)
w <- read_excel("D:/file.xlsx")
# Name      POP
# Roman      3
# Roman      2
# Ura        2
# Ura        3
# Taras      1
# Roman      1
# Ura        1
# Taras      2

# sort: Name (increasing), POP (decreasing)
newdata <- w[order(w$Name, -w$POP),]
# Name         POP
# Roman         3
# Roman         2
# Roman         1
# Taras         2
# Taras         1
# Ura           3
# Ura           2
# Ura           1


# #####################################################

# sorting examples
# sort by mpg
newdata <- mtcars[order(mpg),] 

# sort by mpg and cyl
newdata <- mtcars[order(mpg, cyl),]

#sort by mpg (ascending) and cyl (descending)
newdata <- mtcars[order(mpg, -cyl),]


# more at:
# http://www.statmethods.net/management/sorting.html

