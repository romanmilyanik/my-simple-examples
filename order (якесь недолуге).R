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





# ###################################### НЕПРОТЕСТОВАНЕ ###############################

# I want to sort a data.frame by multiple columns in R. For example, with the data.frame below I would like to sort by column z (descending) then by column b (ascending):
# You can use the order() function directly without resorting to add-on tools -- see this simpler answer which uses a trick right from the top of the example(order) code:
#   
#   R> dd[with(dd, order(-z, b)), ]
# b x y z
# 4 Low C 9 2
# 2 Med D 3 1
# 1  Hi A 8 1
# 3  Hi A 9 1
# Edit some 2+ years later: It was just asked how to do this by column index. The answer is to simply pass the desired sorting column(s) to the order() function:
#   
#   R> dd[ order(-dd[,4], dd[,1]), ]
# b x y z
# 4 Low C 9 2
# 2 Med D 3 1
# 1  Hi A 8 1
# 3  Hi A 9 1
# R>

