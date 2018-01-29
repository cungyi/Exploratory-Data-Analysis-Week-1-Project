setwd("~/Desktop/Coursera/Exploratory Data Analysis/week1")
getwd()

# import the data
consumptiondat <- read.table("household_power_consumption.txt", header = TRUE, na.strings = "?",sep = ";", 
                             stringsAsFactors=FALSE)
head(consumptiondat)
names(consumptiondat)
dim(consumptiondat)

# subset the data
selected_consumpdat <- consumptiondat[consumptiondat$Date %in% c("1/2/2007","2/2/2007"),]

# draw the histagram
png("plot1.png", width=480, height=480)
par(bg = 'grey')
hist(selected_consumpdat$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power(kilowatts)")
dev.off()

