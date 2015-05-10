temp <- tempfile()
download.file("http://d396qusza40orc.cloudfront.net/exdata/data/household_power_consumption.zip",temp)
data <- read.table(unz(temp, "household_power_consumption.txt"), sep=";", header=TRUE, colClasses=c("character", "character", rep("numeric",7)), na="?")
unlink(temp)

data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, "%d/%m/%Y")

# only from the dates 2007-02-01 and 2007-02-02
dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
vals <- subset(data, Date %in% dates)


