## Script:  plot2.R
## Author:  Nicos Kililis
## Date:    21/02/2016
##
##  Plots a simple lines of the Global Active Power (killowatts) between 2007-02-01 and 2007-02-02 for the
##  electric power consumption dataset from the UC Irvine Machine Learning Repository  (http://archive.ics.uci.edu/ml/).
##
##  Created as part of the requirements of course project 1 of "Exploratory Data Analysis" coursera course
##  (https://class.coursera.org/exdata-008)

# Loads power consumption dataset to 'powerConsumptionData' data.frame variable
source("loadDataset.R")

# Open a graphics device for plotting to a PNG file 'Plot2.png'
png(filename = "Plot2.png", width=480, height=480, bg="transparent")

plot(
  powerConsumptionData$DateTime,  # X-Time series
  powerConsumptionData$Global_active_power,  # Y-data series
  ylab="Global Active Power (kilowatts)",  # Y label (data series),
  xlab="",
  type='l' # Plot a simple line chart
)

# Close the PNG file
dev.off()

message("Saved 'Global Active Power' line chart to 'Plot2.png'")