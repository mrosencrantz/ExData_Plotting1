if(is.null(vals))
  source("get_data.R")


png("plot3.png", width=480, height=480)
plot(vals$Time, vals$Sub_metering_1, type="l", ylab="Global Active Power (kilowatts)", xlab="")
lines(vals$Time, vals$Sub_metering_2, col='Red')
lines(vals$Time, vals$Sub_metering_3, col='Blue')

legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

