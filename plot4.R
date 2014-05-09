hpc <- read.table("household_power_consumption.txt",
                  skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table(
                    "household_power_consumption.txt",
                    nrow = 1, header = TRUE, sep=";")))
wDays <- strptime(paste(hpc$Date, hpc$Time), format='%d/%m/%Y %H:%M:%S')
plot4 <- paste0(getwd(),"/","plot4.png")
png(filename=plot4, height=480, width=480,bg="white")
par(mfrow=c(2,2))
plot(wDays, hpc$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(wDays, hpc$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(wDays,hpc$Sub_metering_1, type="l", xlab ="",ylab = "Energy sub metering",col="black")
lines(wDays,hpc$Sub_metering_2, type="l", col="red")
lines(wDays,hpc$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       cex=0.8, col=c("black","red","blue"),lwd=2,bty = "n")
plot(wDays, hpc$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
