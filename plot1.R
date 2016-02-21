## Script:  plot1.R
## Author:  Nicos Kililis
## Date:    21/02/2016
##
##  Plots a histogram of the Global Active Power (killowatts) between 2007-02-01 and 2007-02-02 for the
##  electric power consumption dataset from the UC Irvine Machine Learning Repository 
##  (http://archive.ics.uci.edu/ml/).
##
##  Created as part of the requirements of course project 1 of "Exploratory Data Analysis" coursera course
##  (https://class.coursera.org/exdata-008)

# Loads power consumption dataset to 'powerConsumptionData' data.frame variable
source("loadDataset.R")

# Open a graphics device for plotting to a PNG file 'Plot1.png'
png(filename = "Plot1.png", width=480, height=480, bg="transparent")

# Plot the Global active power histogram
hist(
  x=powerConsumptionData$Global_active_power,  # Data series
  main="Global Active Power",  # Main chart title
  xlab="Global Active Power (kilowatts)",  # X label (data series)
  col="red"  # Bar colour style
)

# Close the PNG file
dev.off()

message("Saved 'Global Active Power' histogram to 'Plot1.png'")