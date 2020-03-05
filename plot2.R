p <- read.table("household_power_consumption.txt", skip=1, sep=";")
names(p) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
sub_data <- subset(p, p$Date=="1/2/2007" & power$Date =="2/2/2007")

t <- strptime(paste(sub_data$Date, sub_data$Time, sep = " "), "%d/%m/%Y %H:%M:%S")


plot(t, as.numeric(as.character(sub_data$Global_active_power)), type="l", ylab="Global Active Power (kilowatts)", main="Plot 2")
