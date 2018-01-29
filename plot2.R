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

#convert the data
selected_consumpdat$datetime <- strptime(paste(selected_consumpdat$Date, selected_consumpdat$Time)
                                         , format = "%d/%m/%Y %H:%M:%S")

# plot

png("plot2.png", width=480, height=480)
par(bg = "grey")
plot(selected_consumpdat$datetime, selected_consumpdat$Global_active_power, type = "l",
     ylab = "Global Active Power(kilowatts)", xlab = "")
dev.off()

