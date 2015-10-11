#load source
source("dataset_load.R")
if(is.null(mydata))
        mydata <- dataset_load()

#plot graph
png("plot3.png", width = 480, height = 480)
plot(mydata$Time, mydata$Sub_metering_1,
     xlab = "", ylab = "Energy sub merging", type= "l")
#Add lines
lines(mydata$Time, mydata$Sub_metering_2, col = "red")
lines(mydata$Time, mydata$Sub_metering_3, col = "blue")

# Add legends
legend("topright", c("Sub_merging_1", "Sub_merging_2", "Sub_merging_3"),
       col = c("black", "red", "blue"), lty = 1)
dev.off()
