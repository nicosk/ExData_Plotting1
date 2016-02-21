## Script:  plot3.R
## Author:  Nicos Kililis
## Date:    21/02/2016
##
##  Plots of watt-hour electricity consumption from the UC Irvine Machine Learning Repository  (http://archive.ics.uci.edu/ml/)
##  between 2007-02-01 and 2007-02-02 for:
##    [black] energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). 
##    [red]   energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. 
##    [blue]  energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.
##  
##  Created as part of the requirements of course project 1 of "Exploratory Data Analysis" coursera course
##  (https://class.coursera.org/exdata-008)

# Loads power consumption dataset to 'powerConsumptionData' data.frame variable
source("loadDataset.R")

# Open a graphics device for plotting to a PNG file 'Plot3.png'
png(filename = "Plot3.png", width=480, height=480, bg="transparent")

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
  lwd=1  # Since plot is initialisesd as type 'n', lwd=1 forces the legend to display each data series as a line chart with width 1.
)

# Close the PNG file
dev.off()

message("Saved sub-metering line charts  to 'Plot3.png'")