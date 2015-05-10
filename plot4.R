if(is.null(vals))
  source("get_data.R")

png("plot4.png", width=480, height=480)

par(mfrow = c(2, 2))
# Plot 1
plot(vals$Time, vals$Global_active_power, type = "n", ylab = "Global Active Power", xlab="")
lines(vals$Time, vals$Global_active_power)
# Plot 2
plot(vals$Time, vals$Voltage, type = "n", ylab = "Voltage", xlab="datetime")
lines(vals$Time, vals$Voltage)
# Plot 3
plot(c(vals$Time,vals$Time,vals$Time), c(vals$Sub_metering_1, vals$Sub_metering_2, vals$Sub_metering_3), type = "n", ylab = "Energy sub metering", xlab="")
lines(vals$Time, vals$Sub_metering_1, col="black")
lines(vals$Time, vals$Sub_metering_2, col="red")
lines(vals$Time, vals$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1), col=c("black", "red", "blue"))
# Plot 4
plot(vals$Time, vals$Global_reactive_power, type = "n", ylab = "Global_reactive_power", xlab="datetime")
lines(vals$Time, vals$Global_reactive_power)
dev.off()
