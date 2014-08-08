#read the file and save only the relevant rows into a dataframe

datafile2 <- read.table("household_power_consumption.txt", sep=";", header=TRUE, skip= 66637, nrow=2879)

# since header is lost, rename the columns with the correct names
colnames(datafile2) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", 
                         "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

#part 2

datafile2$Date <- strptime(paste(datafile2$Date,datafile2$Time), "%d/%m/%Y %H:%M:%S")

plot(datafile2$Date, datafile2$Global_active_power, type="l", xlab= "Date", ylab = "Global Active Power (kilowatts)")

png(filename = 'myPlot2.png', width = 500, height = 500, units = 'px')
dev.copy(png, file = "myPlot2.png")
dev.off()