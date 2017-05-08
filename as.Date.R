# дата вирізана із строки

library(readxl)
library(stringr)
a <- read_excel("C:/Users/milyanik/Desktop/fil/file.xlsx")

# file_name
# D:\files\000001_20150101.xml
# D:\files\000002_20150101.xml
# D:\files\000003_20150102.xml
# D:\files\000004_20150102.xml
# D:\files\000005_20150102.xml
# D:\files\000006_20150103.xml
# D:\files\000007_20150103.xml
# D:\files\000008_20150103.xml

a$date <- as.Date(str_sub(a$file_name, 17, 24), "%Y%m%d")

# file_name                        date
# D:\files\000001_20150101.xml    2015-01-01
# D:\files\000002_20150101.xml    2015-01-01
# D:\files\000003_20150102.xml    2015-01-02
# D:\files\000004_20150102.xml    2015-01-02
# D:\files\000005_20150102.xml    2015-01-02
# D:\files\000006_20150103.xml    2015-01-03
# D:\files\000007_20150103.xml    2015-01-03
# D:\files\000008_20150103.xml    2015-01-03

# =====================================================

# кількість днів між датами 
mydates <- as.Date(c("2017-01-01", "2016-01-01"))
days <- mydates[1] - mydates[2]

# =====================================================

# сьогоднішня дата
Sys.Date()
# сьогоднішня дата і час
date()

# =====================================================

# символи що використовуються з функцією format() для відораження дати
# Symbol    	Meaning	                        Example
# %d	        day as a number (0-31)        	01-31
# %a          abbreviated weekday             Mon
# %A	        unabbreviated weekday           Monday
# %m         	month (00-12)	                  00-12
# %b          abbreviated month               Jan
# %B	        unabbreviated month             January
# %y	        2-digit year                    07
# %Y          4-digit year	                  2007

today <- Sys.Date()
format(today, format="%B %d %Y")
#  "Май 07 2017"

# =====================================================

# конвертувати текст в формат 'mm/dd/yyyy'
strDates <- c("01/05/1965", "08/16/1975")
dates <- as.Date(strDates, "%m/%d/%Y")

# =====================================================

# default форматом є yyyy-mm-dd
mydates <- as.Date(c("2007-06-22", "2004-02-13"))

# =====================================================

# з Excel:
dates <- c(30829, 38540)
betterDates <- as.Date(dates, origin = "1899-12-30")


# більше на http://www.statmethods.net/input/dates.html
# https://www.r-bloggers.com/date-formats-in-r/
# http://stats.idre.ucla.edu/r/faq/how-can-i-format-a-string-containing-a-date-into-r-date-object/
