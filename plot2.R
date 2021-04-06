##readingdata file
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

##selecting formentioned date
dateddata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

##plotting plot2

datetime <- strptime(paste(dateddata$Date, dateddata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globeactivepower <- as.numeric(dateddata$Global_active_power)
png("plot2.png")
plot(datetime, globeactivepower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
