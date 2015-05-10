if(is.null(vals))
  source("get_data.R")


png("plot2.png", width=480, height=480)
plot(vals$Time, vals$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()

