library(stringr)

a <- data.frame(file = c("D:/files/000001_20150101.xml",
                         "D:/files/000002_20150101.xml",
                         "D:/files/000003_20150102.xml",
                         "D:/files/000004_20150102.xml",
                         "D:/files/000005_20150102.xml",
                         "D:/files/000006_20150103.xml",
                         "D:/files/000007_20150103.xml",
                         "D:/files/000008_20150103.xml"))
#  file
#  D:/files/000001_20150101.xml
#  D:/files/000002_20150101.xml
#  D:/files/000003_20150102.xml
#  D:/files/000004_20150102.xml
#  D:/files/000005_20150102.xml
#  D:/files/000006_20150103.xml
#  D:/files/000007_20150103.xml
#  D:/files/000008_20150103.xml

a$date <- as.Date(str_sub(a$file, 17, 24), "%Y%m%d")
#  file                            date
#  D:/files/000001_20150101.xml    2015-01-01
#  D:/files/000002_20150101.xml    2015-01-01
#  D:/files/000003_20150102.xml    2015-01-02
#  D:/files/000004_20150102.xml    2015-01-02
#  D:/files/000005_20150102.xml    2015-01-02
#  D:/files/000006_20150103.xml    2015-01-03
#  D:/files/000007_20150103.xml    2015-01-03
#  D:/files/000008_20150103.xml    2015-01-03

a$mydates <- a$date + 90
#  file                           date         mydates
#  D:/files/000001_20150101.xml   2015-01-01   2015-04-01
#  D:/files/000002_20150101.xml   2015-01-01   2015-04-01
#  D:/files/000003_20150102.xml   2015-01-02   2015-04-02
#  D:/files/000004_20150102.xml   2015-01-02   2015-04-02
#  D:/files/000005_20150102.xml   2015-01-02   2015-04-02
#  D:/files/000006_20150103.xml   2015-01-03   2015-04-03
#  D:/files/000007_20150103.xml   2015-01-03   2015-04-03
#  D:/files/000008_20150103.xml   2015-01-03   2015-04-03

Sys.Date()
# "2017-09-20"
date()
# Wed Sep 20 21:49:54 2017"

strDates <- c("01/05/1965", "28/12/1975")
dates <- as.Date(strDates, "%d/%m/%Y")
# "1965-05-01" "1975-12-28"

# http://www.statmethods.net/input/dates.html
# https://www.r-bloggers.com/date-formats-in-r/
# http://stats.idre.ucla.edu/r/faq/how-can-i-format-a-string-containing-a-date-into-r-date-object/

 



