# Exploratory Data Analysis course project 1

This work has been carried out as part of the week 1 course project for the Exploratory Data Analysis course 
by Roger D. Peng, PhD, Jeff Leek, PhD, Brian Caffo, PhD of Johns Hopkins Bloomberg school of public health.

## Files

### R Scripts

* <b>loadDataset.R</b> Loads the dataset used by this assignment. 
The dataset is loaded from the expected file 'household_power_consumption.txt'. 
If the file does not exist then it is downloaded and extracted from <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">'exdata data household_power_consumption.zip'</a> [20Mb]
* <b>plot1.R</b> Creates 'Plot1.png' plot of this assignment. This is a histogram of the global active power (kilowatts).
* <b>plot2.R</b> Creates 'Plot2.png' plot of this assignment. This is a line chart of the global active power (kilowatts).
* <b>plot3.R</b> Creates 'Plot3.png' plot of this assignment. This is a combined line chart plot of the three sub metering (Sub_metering_1, Sub_metering_2, Sub_metering_3) data series.
* <b>plot4.R</b> Creates 'Plot4.png' plot of this assignment. This combines four different charts in a 2x2 grid. Top-left is a line chart of the global active power (kilowatts), similar to Plot2.png.
To-right is a line chart of the minute-averaged voltage (in volt). Bottom-left is the sub metering line chart similar to Plot3.png. Bottom-right is the household global minute-averaged reactive power (in kilowatt).

### Output files

<em>Plot1.png</em>, <em>Plot2.png</em>, <em>Plot3.png</em>, <em>Plot4.png</em> are the output files of R scripts <em>plot1.R</em>, <em>plot2.R</em>, <em>plot3.R</em>, <em>plot4.R</em> respectively.

#### Plot1.png

![Output of plot1.R](Plot1.png) 


#### Plot2.png

![Output of plot2.R](Plot2.png) 


#### Plot3.png

![Output of plot3.R](Plot3.png) 


#### Plot4.png

![Output of plot4.R](Plot4.png) 

## Usage

* Working directory must contain files <em>plot1.R</em>, <em>plot2.R</em>, <em>plot3.R</em>, <em>plot4.R</em>.

Run the following:
* `source("plot1.R")` to generate <em>Plot1.png</em>
* `source("plot2.R")` to generate <em>Plot2.png</em>
* `source("plot3.R")` to generate <em>Plot3.png</em>
* `source("plot4.R")` to generate <em>Plot4.png</em>

## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which I have made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data





When loading the dataset into R, please consider the following:

* The dataset has 2,075,259 rows and 9 columns. First
calculate a rough estimate of how much memory the dataset will require
in memory before reading into R. Make sure your computer has enough
memory (most modern computers should be fine).

* We will only be using data from the dates 2007-02-01 and
2007-02-02. One alternative is to read the data from just those dates
rather than reading in the entire dataset and subsetting to those
dates.

* You may find it useful to convert the Date and Time variables to
Date/Time classes in R using the `strptime()` and `as.Date()`
functions.

* Note that in this dataset missing values are coded as `?`.


## Making Plots

Our overall goal here is simply to examine how household energy usage
varies over a 2-day period in February, 2007. Your task is to
reconstruct the following plots below, all of which were constructed
using the base plotting system.

First you will need to fork and clone the following GitHub repository:
[https://github.com/rdpeng/ExData_Plotting1](https://github.com/rdpeng/ExData_Plotting1)


For each plot you should

* Construct the plot and save it to a PNG file with a width of 480
pixels and a height of 480 pixels.

* Name each of the plot files as `plot1.png`, `plot2.png`, etc.

* Create a separate R code file (`plot1.R`, `plot2.R`, etc.) that
constructs the corresponding plot, i.e. code in `plot1.R` constructs
the `plot1.png` plot. Your code file **should include code for reading
the data** so that the plot can be fully reproduced. You should also
include the code that creates the PNG file.

* Add the PNG file and R code file to your git repository

When you are finished with the assignment, push your git repository to
GitHub so that the GitHub version of your repository is up to
date. There should be four PNG files and four R code files.


The four plots that you will need to construct are shown below. 


### Plot 1


![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


### Plot 2

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


### Plot 3

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


### Plot 4

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 

