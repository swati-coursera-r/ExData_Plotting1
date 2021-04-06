##readingdata file
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

##selecting for mentioned date
dateddata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

##plot 4
globeactivepower <- as.numeric(dateddata$Global_active_power)
globereactivepower <- as.numeric(dateddata$Global_reactive_power)
voltage <- as.numeric(dateddata$Voltage)
submeter1 <- as.numeric(dateddata$Sub_metering_1)
submeter2 <- as.numeric(dateddata$Sub_metering_2)
submeter3 <- as.numeric(dateddata$Sub_metering_3)


png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(datetime, globeactivepower, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")
plot(datetime, submeter1, type="l", ylab="Energy submeter", xlab="")
lines(datetime, submeter2, type="l", col="red")
lines(datetime, submeter3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(datetime, globereactivepower, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()