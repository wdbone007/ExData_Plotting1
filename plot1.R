## Exploratory Data Analysis: Class Project 1
# William Bone
# Plot1
#________________________________________________

fh <- file("household_power_consumption.txt")
ba <- read.table(text = grep("^[1,2]/2/2007", readLines(fh), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)

# Generate Plot 1
hist(ba$Global_active_power, col = "red", main = paste("Global Active Power"), xlab = "Global Active Power (kilowatts)")
dev.copy(png,"plot1.png",width=480,height=480,units="px",res=100) # Save as PNG
dev.off()