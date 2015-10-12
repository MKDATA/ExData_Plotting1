#load source
source("dataset_load.R")
if(is.null(mydata))
        mydata <- dataset_load()

#plot graph
png("plot2.png", width = 480, height = 480)
plot(mydata$Time, mydata$Global_active_power,
     xlab = "", ylab = "Global Active Power (kilowatts)", type= "l")

dev.off()
