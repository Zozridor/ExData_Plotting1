p <- read.table("household_power_consumption.txt", skip=1, sep=";")
names(p) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
sub_data <- subset(p, p$Date=="1/2/2007" | p$Date =="2/2/2007")

hist(as.numeric(as.character(sub_data$Global_active_power)),main="Global Active Power", xlab="Global Active Power (kilowatts)",col="red")
title("Global Active Power")