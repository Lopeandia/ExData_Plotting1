data <- read.csv("household_power_consumption.txt", sep=";", quote="\"", header = TRUE,  na.strings = "?")

data <- data[data[,1]=="1/2/2007" | data[,1]=="2/2/2007",]

time <- strptime(paste(period$Date, period$Time), "%d/%m/%Y %H:%M:%S")

png("plot3.png")

plot(time, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")

lines(time, data$Sub_metering_2, col="red")
lines(time, data$Sub_metering_3, col="blue")

legend('topright',  c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = c(1,1,1), col = c('black', 'red', 'blue'))

dev.off()