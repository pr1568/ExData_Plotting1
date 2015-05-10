rawData = "household_power_consumption.txt"
loadData = read.table(rawData, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- loadData[loadData$Date %in% c("1/2/2007","2/2/2007") ,]
#Date Formating
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#converting as Numeric
globalActivePower <- as.numeric(subSetData$Global_active_power)
#ploting 
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (Kilo Watts)")
dev.off()