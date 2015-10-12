
# load dataset to R, using data.table
dataset_load <- function(){
        
source_file <- "./data/household_power_consumption.txt"
mydata <- read.table(source_file, sep = ";", header = TRUE,
                     colClasses = c("character", "character", "numeric",
                     "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"),
                     na = "?")

# convert Date and Time variables to Date/Time classes
mydata$Time <- strptime(paste(mydata$Date, mydata$Time), "%d/%m/%Y %H:%M:%S")
mydata$Date <- as.Date(mydata$Date, "%d/%m/%Y")

# Subset to dates 2007-02-01 and 2007-02-0
mydata <- subset(mydata, Date %in% as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d"))
}
