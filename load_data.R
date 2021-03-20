library(data.table)
power <- fread("./exdata_data_household_power_consumption/household_power_consumption.txt", na.strings = "?") 

## Subset dataset based on dates
power <- power[, Date:=as.Date(Date, "%d/%m/%Y")]
power <- power[Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02")]

## Create a new datetime column
power[,Datetime:= as.POSIXct(paste(Date, Time))]

## Remove Date and Time column
power[, c("Date","Time"):=NULL] 

