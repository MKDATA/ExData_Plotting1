#load source
source("dataset_load.R")
mydata <- dataset_load()

#plot graph
png("plot1.png", width = 480, height = 480)
hist(mydata$Global_active_power, main= "Global Active_Power",
                                xlab = "Global Active Power (kilowatts)", ylab = "Frequency",
                                col = "red")

dev.off()
