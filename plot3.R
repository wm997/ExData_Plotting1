# Load and subset data
data <- read.table("household_power_consumption.txt", sep = ";", 
                   header = TRUE, na.strings = "?", 
                   colClasses = c("character", "character", rep("numeric", 7)))

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

subset_data <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

subset_data$Datetime <- strptime(paste(subset_data$Date, subset_data$Time),
                                 format = "%Y-%m-%d %H:%M:%S")
# Create plot3.png
png("plot3.png", width = 480, height = 480)

# Plot Sub_metering_1
plot(subset_data$Datetime, subset_data$Sub_metering_1,
     type = "l", col = "black",
     xlab = "", ylab = "Energy sub metering")

# Add Sub_metering_2 and Sub_metering_3
lines(subset_data$Datetime, subset_data$Sub_metering_2, col = "red")
lines(subset_data$Datetime, subset_data$Sub_metering_3, col = "blue")

# Add legend
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = 1)

dev.off()