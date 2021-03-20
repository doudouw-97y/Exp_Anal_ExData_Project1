source("load_data.R")

## Plot1
par(mfrow = c(1,1))
hist(power$Global_active_power, col = "red", 
     xlab = "Glocal Active Power (Killowatts)",
     main = "Global Active Power")
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()