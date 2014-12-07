##plot1.r to consturct a histogram of household energy usage over a 2 day period
dataFile <- "C:/Users/Vyjayanthi/desktop/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")## reads file
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]## sub data for specific days

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
##plotting details on Histogram
hist(globalActivePower, col="red",main= paste("Global Active Power"), xlab="Global Active Power (kilowatts)")
dev.off()
