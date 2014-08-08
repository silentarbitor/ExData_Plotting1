datafile2 <- read.table("household_power_consumption.txt", sep=";", header=TRUE, skip= 66637, nrow=2879)

# since header is lost, rename the columns with the correct names
colnames(datafile2) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", 
                         "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
#part 4 
par(mfcol= c(2,2))

#graph 1
plot(datafile2$Date, datafile2$Global_active_power, type="l", xlab= "Date", ylab = "Global Active Power (kilowatts)")
#graph 2
plot(datafile2$Date, datafile2$Sub_metering_1, type ="l", xlab= "Date", ylab= "Energy sub metering")
lines(datafile2$Date, datafile2$Sub_metering_2, col="red")
lines(datafile2$Date, datafile2$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering 1", "Sub_metering 2", "Sub_metering 3"), cex = 0.3)
#graph 3
plot(datafile2$Date, datafile2$Voltage, type = "l", xlab = "Date", ylab = "Voltage")
#graph 4
plot(datafile2$Date, datafile2$Global_reactive_power, type = "l", xlab = "Date", ylab = "Global reactive power")

png(filename = 'myPlot4.png', width = 500, height = 500, units = 'px')
dev.copy(png, file = "myPlot4.png")
dev.off()