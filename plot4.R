source("load_data.R")

## Plot4
par(mfrow = c(2,2))
with(power, {
    plot(Global_active_power ~ Datetime, type = "l", xlab = "", ylab = "Glocal Active Power (Killowatts)")
    plot(Voltage ~ Datetime, type = "l", xlab = "datetime", ylab = "Voltage")
    plot(Sub_metering_1 ~ Datetime, type = "l", xlab = "", ylab = "Energy sub metering")
    lines(Sub_metering_2 ~ Datetime, col = "red")
    lines(Sub_metering_3 ~ Datetime, col = "blue")
    legend("topright", col = c("black", "red", "blue"), lty = 1, bty = "n", 
           legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    plot(Global_reactive_power ~ Datetime, type = "l", xlab = "datetime")
})
dev.copy(png,"plot4.png", width=480, height=480)
dev.off()
