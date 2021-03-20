source("load_data.R")


## Plot3
with(power, {
    plot(Sub_metering_1 ~ Datetime, type = "l", xlab = "", ylab = "Energy sub metering")
    lines(Sub_metering_2 ~ Datetime, col = "red")
    lines(Sub_metering_3 ~ Datetime, col = "blue")
})
legend("topright", col = c("black", "red", "blue"), lty = 1, legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(png,"plot3.png", width=480, height=480)
dev.off()
