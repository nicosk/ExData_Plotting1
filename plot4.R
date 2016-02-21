## Script:  plot4.R
## Author:  Nicos Kililis
## Date:    21/02/2016
## 
## Plots a 2x2 matrix grid of plots related to the power consumamption dataset provided for this course project.
##  
##  Created as part of the requirements of course project 1 of "Exploratory Data Analysis" coursera course
##  (https://class.coursera.org/exdata-008)

# Loads power consumption dataset to 'powerConsumptionData' data.frame variable
source("loadDataset.R")

# Open a graphics device for plotting to a PNG file 'Plot4.png'
png(filename = "Plot4.png", width=480, height=480, bg="transparent")

# Create a 2x2 plot
par(mfrow=c(2,2))

# Add Global Active Power (killowatts) line chart (plot2)
plot(
  powerConsumptionData$DateTime,  # X-Time series
  powerConsumptionData$Global_active_power,  # Y-data series
  ylab="Global Active Power",  # Y label,
  xlab="",
  type='l' # Plot a simple line chart
)

# Add voltage chart
plot(
  powerConsumptionData$DateTime,  # X time series
  powerConsumptionData$Voltage,   # Y series
  type="l",  # Line chart
  xlab="datetime",  # X label
  ylab="Voltage"  # Y label
)

# Add sub-metering line charts (plot3)
# Initialise sub-metering plot without plotting (type 'n')
plot(
  powerConsumptionData$DateTime,  # X-Time series
  powerConsumptionData$Sub_metering_1,  # Y-data series
  ylab="Energy sub metering",  # Y label (data series),
  xlab="",  # No X-axis label
  type='n' # Do not plot yet
)

# Plot sub metering data series using simple line charts
lines(powerConsumptionData$DateTime, powerConsumptionData$Sub_metering_1, col="black")
lines(powerConsumptionData$DateTime, powerConsumptionData$Sub_metering_2, col="red")
lines(powerConsumptionData$DateTime, powerConsumptionData$Sub_metering_3, col="blue")

# Add data legend
legend(
  "topright",  # Position the legend on the top-right corner of the chart
  legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),  # Data series labels
  col=c("black", "red", "blue"),  # Data series colours
  lwd=1,  # Since plot is initialisesd as type 'n', lwd=1 forces the legend to display each data series as a line chart with width 1.
  bty="n"
)

# Add Global reactive power line chart
plot(
  powerConsumptionData$DateTime,  # X Time series
  powerConsumptionData$Global_reactive_power,  # Y data series
  xlab="datetime",  # X label
  ylab="Global_reactive_power",  # Y label
  type="l"  # Line chart
)

message("Saved plots to 'Plot4.png'")

dev.off()