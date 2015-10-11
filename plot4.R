#load source
source("dataset_load.R")
if(is.null(mydata))
        mydata <- dataset_load()

#plot graph
png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
# plot 1-1
plot(mydata$Time, mydata$Global_active_power,
     xlab = "", ylab = "Global Active Power (kilowatts)", type= "l")

# plot 1-2
plot(mydata$Time, mydata$Voltage,
     xlab = "datetime", ylab = "Voltage", type= "l")

# plot 2-1
plot(mydata$Time, mydata$Sub_metering_1,
     xlab = "", ylab = "Energy sub merging", type= "l")
##Add lines
lines(mydata$Time, mydata$Sub_metering_2, col = "red")
lines(mydata$Time, mydata$Sub_metering_3, col = "blue")
## Add legends
legend("topright", c("Sub_merging_1", "Sub_merging_2", "Sub_merging_3"),
       col = c("black", "red", "blue"), lty = 1, lwd = 0)

# plot 2-2
plot(mydata$Time, mydata$Global_reactive_power,
     xlab = "datetime", ylab = "Global_reactive_power", type= "l")

dev.off()
