hpc <- read.table("household_power_consumption.txt",
                  skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table(
                    "household_power_consumption.txt",
                    nrow = 1, header = TRUE, sep=";")))
wDays <- strptime(paste(hpc$Date, hpc$Time), format='%d/%m/%Y %H:%M:%S')
plot3 <- paste0(getwd(),"/","plot3.png")
png(filename=plot3, height=480, width=480,bg="white")
plot(wDays,hpc$Sub_metering_1, type="l", xlab ="",ylab = "Energy sub metering",col="black")
lines(wDays,hpc$Sub_metering_2, type="l", col="red")
lines(wDays,hpc$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
              cex=0.8, col=c("black","red","blue"),lwd=2)
dev.off()