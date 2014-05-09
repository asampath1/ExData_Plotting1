hpc <- read.table("household_power_consumption.txt",
                  skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table(
                    "household_power_consumption.txt",
                    nrow = 1, header = TRUE, sep=";")))
wDays <- strptime(paste(hpc$Date, hpc$Time), format='%d/%m/%Y %H:%M:%S')
plot2 <- paste0(getwd(),"/","plot2.png")
png(filename=plot2, height=480, width=480,bg="white")
plot(wDays, hpc$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()