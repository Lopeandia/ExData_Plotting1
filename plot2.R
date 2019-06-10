data <- read.csv("household_power_consumption.txt", sep=";", quote="\"", header = TRUE,  na.strings = "?")

data <- data[data[,1]=="1/2/2007" | data[,1]=="2/2/2007",]

time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

png("plot2.png")

plot(time, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()