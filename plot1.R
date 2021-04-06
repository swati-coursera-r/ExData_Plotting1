##readingdata file
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

##selecting formentioned date
dateddata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#plotting histogram
activepower <- as.numeric(dateddata$Global_active_power)
png("plot1.png")
hist(activepower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()