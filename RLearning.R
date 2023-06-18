library(nycflights13)
library(tidyverse)
nycflights13::flights
flights
head(flights)
view(flights)
#pick up observations by their values (filter())
filter()
# reorder the rows (arrange())
arrange()
#pick variables by thier names (select())
select()
# create new variables with functions of existing variables (mutate())

#collapse many values down to a single summary (summarise())
jan1 <- filter(flights, month ==1, day ==1)
(dec24 <- filter(flights, month == 12, day == 24))
nov_dec <- filter(flights, month == 11 | month == 12)
jan_feb <- filter(flights, month %in% c(1,2))

filter(flights, !(arr_delay > 120 | dep_delay >12 ))
       
arriveLate <- filter(flights, arr_delay > 120)
toHouston <- filter(flights, dest %in% c("IAH", "HOU"))
toHouston0 <- filter(flights, dest == "IAH" | dest == "HOU")
#were operated by United, American, or Delta
UAD <- filter(flights, carrier %in% c("AA", "UA", "DL"))

#Departed in summer(July, August, September)
DepSummer <- filter(flights, month %in% c(7, 8, 9))

#Arrived more than two hours late, but didn't leave late
arrLateLeaveNorm <- filter(flights, arr_delay > 120 & dep_delay <= 0)

# departed between midnight and 6am
midnigt6am <- filter(flights, dep_time <= 600 & dep_time >= 0000)
midnight6am0 <- filter(flights, between(dep_time, 0000, 600))

depTimeNA <- sum(is.na(flights$dep_time))
NA ^ 0
NA | TRUE
FALSE & NA
NA > 5
