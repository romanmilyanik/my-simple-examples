## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ ##
## + VLOOKUP + VLOOKUP + VLOOKUP + VLOOKUP + VLOOKUP + VLOOKUP + VLOOKUP + VLOOKUP + VLOOKUP + VLOOKUP + ##
## +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ ##
library(readxl)
t_age <- read_excel("C:/Users/milyanik/Desktop/44.xlsx")
# id	       Age
# Taras	     28
# Roman	     27
# Taras	     25
# Ura	       21
# Zoryana	   24
# Sasha	     32
# Anatoliy	 41
# Sveta	     42
# Olya	     33
# Vova	     33

t_department <- read_excel("C:/Users/milyanik/Desktop/55.xlsx")
# id        	department
# Roman	         dkm
# Taras	         opd
# Ura	           uni
# Zoryana	       dkm
# Sasha	         dkr
# Anatoliy	     drk
# Olya        	 dkr

base1 <- (merge(t_age, t_department, by = 'id'))   # складає разом але те чого не знайшло - опускає
# id        Age      department
# Anatoliy   41        drk
# Olya       33        dkr
# Roman      27        dkm
# Sasha      32        dkr
# Taras      28        opd
# Taras      25        opd
# Ura        21        uni
# Zoryana    24        dkm

base2 <- (merge(t_department, t_age, by = 'id'))
# id         department   Age
# Anatoliy      drk       41
# Olya          dkr       33
# Roman         dkm       27
# Sasha         dkr       32
# Taras         opd       28
# Taras         opd       25
# Ura           uni       21
# Zoryana       dkm       24

# -----------------------------------------------------------------------
library(dplyr)
base3 <- left_join(t_department, unique(t_age[,c("id", "Age")]))
# взяв таблицю "т_департмент" і приліпив до неї стовпець "Ейдж" з таблиці "т_ейдж"
# id         department    Age
# Roman         dkm        27
# Taras         opd        28
# Taras         opd        25
# Ura           uni        21
# Zoryana       dkm        24
# Sasha         dkr        32
# Anatoliy      drk        41
# Olya          dkr        33

base4 <- left_join(t_age, unique(t_department[,c("id", "department")]))
# взяв таблицю "т_Ейдж" і приліпив до неї стовпець "департмент" з таблиці "т_департмент"
# id         Age     department
# Taras      28         opd
# Roman      27         dkm
# Taras      25         opd
# Ura        21         uni
# Zoryana    24         dkm
# Sasha      32         dkr
# Anatoliy   41         drk
# Sveta      42         NA
# Olya       33         dkr
# Vova       33         NA

#!!! в обох випадках спрацює юнік. тобто виведуться всі можливі комбінації
# -----------------------------------------------------------------------
library(plyr)
plyr1 <- join(t_department, t_age, by = "id")
plyr2 <- join(t_age, t_department, by = "id")
# то ж саме що вище!
# -----------------------------------------------------------------------
a <- data.frame(unique(plyr2$id))   # unuque з колонки

## ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ ##
## + IF + IF + IF + IF + IF + IF + IF + IF + IF + IF + IF + IF + IF + IF + IF + IF + IF + IF + IF + IF + IF + ##
## ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ ##
# створення категоріальної характеристики
df$credit_amount <- as.factor(ifelse(df$credit_amount<=2500,'0-2500',
                                     ifelse(df$credit_amount<=5000,'2600-5000',
                                            '5000+')))
## ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ ##
## +++ filter + filter + filter + filter + filter + filter + filter + filter + filter + filter + filter +++ ##
## ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ ##
library(dplyr)
KSrow <- data.frame(filter(score_table, groups == "good"))




















