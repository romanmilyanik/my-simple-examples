beverage <- read.table("C:/Users/Desktop/beverage.csv", header=T, sep=";" )

# replace by 0 ***********************************************
# numb.obs COKE PEPSI SPRITE  TAB  SEVENUP
#       1    1     1     NA    0       1
#       2   NA     1      0   NA      NA
#       3    1     1      1    0       0
#       4    0     1      0    0       0
#       5    0    NA      0    0       0

beverage$COKE[which(is.na(beverage$COKE))] <- 0
beverage$PEPSI[which(is.na(beverage$PEPSI))] <- 0
beverage$SPRITE[which(is.na(beverage$SPRITE))] <- 0
beverage$TAB[which(is.na(beverage$TAB))] <- 0
beverage$SEVENUP[which(is.na(beverage$SEVENUP))] <- 0

# numb.obs COKE PEPSI SPRITE  TAB  SEVENUP
#       1    1     1      0    0       1
#       2    0     1      0    0       0
#       3    1     1      1    0       0
#       4    0     1      0    0       0
#       5    0     0      0    0       0

# remove lines with NA ****************************************
# numb.obs COKE PEPSI SPRITE  TAB  SEVENUP
#       1    1     1     NA    0       1
#       2   NA     1      0   NA      NA
#       3    1     1      1    0       0
#       4    0     1      0    0       0
#       5    0    NA      0    0       0

na.omit(beverage)

# numb.obs COKE PEPSI SPRITE  TAB  SEVENUP
#       3    1     1      1    0       0
#       4    0     1      0    0       0

# replace by mean *********************************************
# numb.obs COKE PEPSI SPRITE  TAB  SEVENUP
#       1    1     1     NA    0       1
#       2   NA     1      0   NA      NA
#       3    1     1      1    0       0
#       4    0     1      0    0       0
#       5    0    NA      0    0       0

beverage$COKE[which(is.na(beverage$COKE))] <- mean(beverage$COKE, na.rm = TRUE)
beverage$PEPSI[which(is.na(beverage$PEPSI))] <- mean(beverage$PEPSI, na.rm = TRUE)
beverage$SPRITE[which(is.na(beverage$SPRITE))] <- mean(beverage$SPRITE, na.rm = TRUE)
beverage$TAB[which(is.na(beverage$TAB))] <- mean(beverage$TAB, na.rm = TRUE)
beverage$SEVENUP[which(is.na(beverage$SEVENUP))] <- mean(beverage$SEVENUP, na.rm = TRUE)

# numb.obs COKE PEPSI SPRITE  TAB  SEVENUP
#       1  1.0     1   0.25    0    1.00
#       2  0.5     1   0.00    0    0.25
#       3  1.0     1   1.00    0    0.00
#       4  0.0     1   0.00    0    0.00
#       5  0.0     1   0.00    0    0.00

# replace -9999 by NA *****************************************
# numb.obs   COKE     PEPSI     SPRITE      TAB        SEVENUP
#       1      1        1        -9999       0          1
#       2     -9999     1         0          -9999      -9999
#       3      1        1         1          0          0
#       4      0        1         0          0          0
#       5      0       -9999      0          0          0

beverage$COKE[beverage$COKE==-9999] <- NA
beverage$PEPSI[beverage$PEPSI==-9999] <- NA
beverage$SPRITE[beverage$SPRITE==-9999] <- NA
beverage$TAB[beverage$TAB==-9999] <- NA
beverage$SEVENUP[beverage$SEVENUP==-9999] <- NA

# numb.obs COKE PEPSI SPRITE  TAB  SEVENUP
#       1    1     1     NA    0       1
#       2   NA     1      0   NA      NA
#       3    1     1      1    0       0
#       4    0     1      0    0       0
#       5    0    NA      0    0       0
