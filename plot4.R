# Load and subset data
data <- read.table("household_power_consumption.txt", sep = ";", 
                   header = TRUE, na.strings = "?", 
                   colClasses = c("character", "character", rep("numeric", 7)))

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

subset_data <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

subset_data$Datetime <- strptime(paste(subset_data$Date, subset_data$Time),
                                 format = "%Y-%m-%d %H:%M:%S")
# Create plot4.png
png("plot4.png", width = 480, height = 480)

# Set up 2x2 plotting area
par(mfrow = c(2, 2))

# Top-left: Global Active Power
plot(subset_data$Datetime, subset_data$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power")
# Top-right: Voltage
plot(subset_data$Datetime, subset_data$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

# Bottom-left: Energy sub metering
plot(subset_data$Datetime, subset_data$Sub_metering_1,
     type = "l", col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(subset_data$Datetime, subset_data$Sub_metering_2, col = "red")
lines(subset_data$Datetime, subset_data$Sub_metering_3, col = "blue")
legend("topright", bty = "n",  # no box
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = 1)
# Bottom-right: Global Reactive Power
plot(subset_data$Datetime, subset_data$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power")

dev.off()