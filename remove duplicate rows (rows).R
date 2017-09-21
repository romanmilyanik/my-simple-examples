library(dplyr)

a <- data.frame(city = c("Istanbul","Istanbul","Istanbul", "Lviv","Lviv", "Kyiv"),
                country = c("Turkey","Turkey.1","Turkey.2", "Ukraine", "Ukraine", "Ukraine"))
#      city    country
#  Istanbul    Turkey
#  Istanbul    Turkey.1
#  Istanbul    Turkey.2
#      Lviv    Ukraine
#      Lviv    Ukraine
#      Kyiv    Ukraine

a_2 <- a %>% distinct(city, .keep_all = T)   # .keep_all = T - залишити всі стовпці
or
a_2 <- a[!duplicated(a$city),]
#      city    country
#  Istanbul    Turkey
#      Lviv    Ukraine
#      Kyiv    Ukraine

# залишити лише унікальні рядки
a_3 <- a %>% distinct
#      city   country
#  Istanbul   Turkey
#  Istanbul   Turkey.1
#  Istanbul   Turkey.2
#      Lviv   Ukraine
#      Kyiv   Ukraine

# more at:
# http://stackoverflow.com/questions/13967063/remove-duplicate-rows-in-r
