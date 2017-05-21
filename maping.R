library(ggplot2)
library(readxl)

UZHOROD      <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "UZHOROD")
CHERNIGIV    <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "CHERNIGIV")
LUGANSK      <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "LUGANSK")
KRYM         <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "KRYM")
LVIV         <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "LVIV")
LUTSK        <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "LUTSK")
IV_FRANKIVSK <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "IV_FRANKIVSK")
CHERNIVTSI   <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "CHERNIVTSI")
TERNOPIL     <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "TERNOPIL")
HMELNITSK    <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "HMELNITSK")
ODESA        <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "ODESA")
MUKOLAIV     <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "MUKOLAIV")
DNIPRO       <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "DNIPRO")
DONETSK      <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "DONETSK")
HARKIV       <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "HARKIV")
POLTAVA      <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "POLTAVA")
SUMU         <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "SUMU")
KYIV         <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "KYIV")
ZAPORIZZIA   <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "ZAPORIZZIA")
HERSON       <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "HERSON")
KIROVOGRAD   <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "KIROVOGRAD")
CHERKASU     <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "CHERKASU")
VINNUTSIA    <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "VINNUTSIA")
JUTOMUR      <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "JUTOMUR")
RIVNE        <- read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "RIVNE")

p <- ggplot()

hidden <- data.frame(xi = c(27, 105), yi = c(105, 113), enrollment = c(1, 0.1))                                 # для нормального розміру точок
p <- p + geom_point(data = hidden, aes(x = xi, y = yi, size = enrollment), color="grey27", show.legend = F)

# color
q <- data.frame(read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "city"))
q2 <- data.frame(q$name_script, q$value)
names(q2) <- c("name_script", "value")
maxx <- max(q$value)
q2$standart <- q2$value / maxx

q2$color <- ifelse(q2$standart == 0, "white",
                   ifelse(q2$standart < 0.15, "mistyrose",
                          ifelse(q2$standart < 0.3, "lightpink",
                                 ifelse(q2$standart < 0.45, "salmon",
                                        ifelse(q2$standart < 0.60, "tomato",
                                               ifelse(q2$standart < 0.75, "red",
                                                      ifelse(q2$standart < 0.90, "red2",
                                                             "red3")))))))

# oblasti
p <- p + geom_polygon(data = UZHOROD, aes(x = UZHOROD$x, y = UZHOROD$y),colour="black", fill = q2[1,4])
p <- p + geom_polygon(data = CHERNIGIV, aes(x = CHERNIGIV$x, y = CHERNIGIV$y),colour="black", fill = q2[2,4])
p <- p + geom_polygon(data = LUGANSK, aes(x = LUGANSK$x, y = LUGANSK$y),colour="black", fill = q2[3,4])
p <- p + geom_polygon(data = KRYM, aes(x = KRYM$x, y = KRYM$y),colour="black", fill = q2[4,4])
p <- p + geom_polygon(data = LVIV, aes(x = LVIV$x, y = LVIV$y),colour="black", fill = q2[5,4])
p <- p + geom_polygon(data = LUTSK, aes(x = LUTSK$x, y = LUTSK$y),colour="black", fill = q2[6,4])
p <- p + geom_polygon(data = IV_FRANKIVSK, aes(x = IV_FRANKIVSK$x, y = IV_FRANKIVSK$y),colour="black", fill = q2[7,4])
p <- p + geom_polygon(data = CHERNIVTSI, aes(x = CHERNIVTSI$x, y = CHERNIVTSI$y),colour="black", fill = q2[8,4])
p <- p + geom_polygon(data = TERNOPIL, aes(x = TERNOPIL$x, y = TERNOPIL$y),colour="black", fill = q2[9,4])
p <- p + geom_polygon(data = HMELNITSK, aes(x = HMELNITSK$x, y = HMELNITSK$y),colour="black", fill = q2[10,4])
p <- p + geom_polygon(data = ODESA, aes(x = ODESA$x, y = ODESA$y),colour="black", fill = q2[11,4])
p <- p + geom_polygon(data = MUKOLAIV, aes(x = MUKOLAIV$x, y = MUKOLAIV$y),colour="black", fill = q2[12,4])
p <- p + geom_polygon(data = DNIPRO, aes(x = DNIPRO$x, y = DNIPRO$y),colour="black", fill = q2[13,4])
p <- p + geom_polygon(data = DONETSK, aes(x = DONETSK$x, y = DONETSK$y),colour="black", fill = q2[14,4])
p <- p + geom_polygon(data = HARKIV, aes(x = HARKIV$x, y = HARKIV$y),colour="black", fill = q2[15,4])
p <- p + geom_polygon(data = POLTAVA, aes(x = POLTAVA$x, y = POLTAVA$y),colour="black", fill = q2[16,4])
p <- p + geom_polygon(data = SUMU, aes(x = SUMU$x, y = SUMU$y),colour="black", fill = q2[17,4])
p <- p + geom_polygon(data = KYIV, aes(x = KYIV$x, y = KYIV$y),colour="black", fill = q2[18,4])
p <- p + geom_polygon(data = ZAPORIZZIA, aes(x = ZAPORIZZIA$x, y = ZAPORIZZIA$y),colour="black", fill = q2[19,4])
p <- p + geom_polygon(data = HERSON, aes(x = HERSON$x, y = HERSON$y),colour="black", fill = q2[20,4])
p <- p + geom_polygon(data = KIROVOGRAD, aes(x = KIROVOGRAD$x, y = KIROVOGRAD$y),colour="black", fill = q2[21,4])
p <- p + geom_polygon(data = CHERKASU, aes(x = CHERKASU$x, y = CHERKASU$y),colour="black", fill = q2[22,4])
p <- p + geom_polygon(data = VINNUTSIA, aes(x = VINNUTSIA$x, y = VINNUTSIA$y),colour="black", fill = q2[23,4])
p <- p + geom_polygon(data = JUTOMUR, aes(x = JUTOMUR$x, y = JUTOMUR$y),colour="black", fill = q2[24,4])
p <- p + geom_polygon(data = RIVNE, aes(x = RIVNE$x, y = RIVNE$y),colour="black", fill = q2[25,4])

CITY <- data.frame(read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "city"))
p <- p + geom_point(data = CITY, aes(x = xi, y = yi, size = 0.2), color="black", show.legend = F)

NAME <- data.frame(read_excel("C:/Users/milyanik/Desktop/coord/dots.xlsx", sheet = "city"))
p <- p + geom_text(data = NAME, hjust = 0.5, vjust = -0.7, aes(x = xi, y = yi, label = name), colour = "black", size = 5)

# remove all garbage
p <- p + theme(axis.line=element_blank(),
             axis.text.x=element_blank(),
             axis.text.y=element_blank(),
             axis.ticks=element_blank(),
             axis.title.x=element_blank(),
             axis.title.y=element_blank(),
             legend.position="none",
             panel.background=element_blank(),
             panel.border=element_blank(),
             panel.grid.major=element_blank(),
             panel.grid.minor=element_blank(),
             plot.background=element_blank())
p











