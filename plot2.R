source("load_data.R")

## Plot2
with(power, plot(Global_active_power ~ Datetime, type = "l", xlab = "", ylab = "Glocal Active Power (Killowatts)"))
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()