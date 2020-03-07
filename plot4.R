par(mfrow=c(2,2))

p <- read.table("household_power_consumption.txt", skip=1, sep=";")
names(p) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
sub_data <- subset(p, p$Date=="1/2/2007" | p$Date =="2/2/2007")

t <- strptime(paste(sub_data$Date, sub_data$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

plot(t, as.numeric(as.character(sub_data$Global_active_power)), type="l", xlab="", ylab="Global Active Power (kilowatts)")
plot(t, as.numeric(as.character(sub_data$Voltage)), type="l", xlab="datetime", ylab="Voltage")
plot(t, as.numeric(as.character(sub_data$Sub_metering_1)), type="l", col="black", xlab="", ylab="Energy Sub Metering")
lines(t, as.numeric(as.character(sub_data$Sub_metering_2)), type="l", col = "red")
lines(t, as.numeric(as.character(sub_data$Sub_metering_3)), type="l", col = "blue")
plot(t, as.numeric(as.character(sub_data$Global_reactive_power)), type="l", col="black", xlab="datetime", ylab="Global_reactive_power")
