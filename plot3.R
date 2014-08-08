datafile2 <- read.table("household_power_consumption.txt", sep=";", header=TRUE, skip= 66637, nrow=2879)

# since header is lost, rename the columns with the correct names
colnames(datafile2) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", 
                         "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(datafile2$Date, datafile2$Sub_metering_1, type ="l", xlab= "Date", ylab= "Energy sub metering")
lines(datafile2$Date, datafile2$Sub_metering_2, col="red")
lines(datafile2$Date, datafile2$Sub_metering_3, col="blue")
legend("top", c("Sub_metering 1", "Sub_metering 2", "Sub_metering 3"), lty = 1,
       col=c("black", "red", "blue"), bty="n", cex=0.7)

png(filename = 'myPlot3.png', width = 500, height = 500, units = 'px')
dev.copy(png, file = "myPlot3.png")
dev.off()