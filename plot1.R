# Load and subset data
data <- read.table("household_power_consumption.txt", sep = ";", 
                   header = TRUE, na.strings = "?", 
                   colClasses = c("character", "character", rep("numeric", 7)))

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

subset_data <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

subset_data$Datetime <- strptime(paste(subset_data$Date, subset_data$Time),
                                 format = "%Y-%m-%d %H:%M:%S")
# Create plot1.png
png("plot1.png", width = 480, height = 480)

hist(subset_data$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")

dev.off()