hpc <- read.table("household_power_consumption.txt",
                  skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table(
                    "household_power_consumption.txt",
                    nrow = 1, header = TRUE, sep=";")))
plot1 <- paste0(getwd(),"/","plot1.png")
png(filename=plot1, height=480, width=480,bg="white")
hist(hpc$Global_active_power,main = "Global Active Power",
                  xlab = "Global Active Power(kilowatts)",col = "red")
dev.off()
