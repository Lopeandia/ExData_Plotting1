
data <- read.csv("household_power_consumption.txt", sep=";", quote="\"", header = TRUE,  na.strings = "?")

data <- data[data[,1]=="1/2/2007" | data[,1]=="2/2/2007",]

png("plot1.png")

hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

dev.off()