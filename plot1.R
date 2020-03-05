p <- read.table("household_power_consumption.txt", skip=1, sep=";")
names(p) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

hist(as.numeric(as.character(p$Global_active_power)),main="Global Active Power", xlab="Global Active Power (kilowatts)",col="red")
title("Global Active Power")