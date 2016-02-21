## Script:  loadDataset.R
## Author:  Nicos Kililis
## Date:    21/02/2016
##
##  Helper script for providing loading the course project electric power consumption dataset.
##
## Dataset:
##  The dataset consists of measurements of electric power consumption in one household with a 
##  one-minute sampling rate over a period of almost 4 years. Different electrical quantities and 
##  some sub-metering values are available.
##  Additional information:
##    - Missing values are indicated by '?' character
##
##  Created as part of the requirements of course project 1 of "Exploratory Data Analysis" coursera course
##  https://class.coursera.org/exdata-008

loadData <- function() {
  # Loads the dataset to 'powerConsumptionData' data.frame variable if not already loaded. May also download the files if no local copies are available.
  
  # Path configuration local variables
  dataZipFileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  dataDirectory <- "./data"
  dataZipFile <- paste0(dataDirectory, "/household_power_consumption.zip")
  dataFile <- paste0(dataDirectory,"/household_power_consumption.txt")
  
  # Load powerConsumptionData data frame if and only if it is not already within the current environment.
  if(!exists("powerConsumptionData")) {
    # 1. Ensure dataFile exists. Downloads and extracts data file if not available.
    if(!file.exists(dataFile)) {
	    # Ensure data directory exists
	    if(!file.exists(dataDirectory)) {
	      dir.create(dataDirectory)
	    }
	    # Ensure ZIP archive archive with the data is available. Downloads the ZIP archive if not available.
	    if(!file.exists(dataZipFile)) {
	      message(paste0("Downloading dataset to to '", dataZipFile, "'"))
	      download.file(url = dataZipFileUrl, destfile = dataZipFile)
	    }
	    message(paste0("Extracting downloaded ZIP archive to '",dataFile, "'"))
	    unzip(zipfile = dataZipFile, exdir = dataDirectory) 
	  }
    
    # 2. Load CSV to memory
    message(paste0("Loading dataset from '", dataFile, "'"))
    fileData <- read.csv(
	  file = dataFile,
	  header=TRUE,
	  sep=";",
	  na.strings=c("","?"),
	  colClasses=c(
	    Date="character",
	    Time="character",
	    Global_active_power="numeric",
	    Global_reactive_power="numeric",
	    Voltage="numeric",
	    Global_intensity="numeric",
	    Sub_metering_1="numeric",
	    Sub_metering_2="numeric",
	    Sub_metering_3="numeric"
	  ),
	  stringsAsFactors=FALSE
    )
    
    # 3. Convert Date column as a Date type
    message(paste("Converting 'Date' column from", class(fileData$Date), "to Date type"))
    fileData$Date <- as.Date(fileData$Date,format = "%d/%m/%Y")
    
    # 4. Subset the data between the required dates 2007-02-01 & 2007-02-02
    fromDate <- as.Date("2007-02-01")
    toDate <- as.Date("2007-02-02")
    message(paste("Subsetting the data between date", fromDate, "and", toDate))
    fileData <- fileData[fileData$Date >= fromDate & fileData$Date <= toDate,]
    
    # 5. Merging 'Date' and 'Time' columns into a single Date/Time 'POSIXlt' 'POSIXt' type column
    message("Creating Date/Time column 'Timestamp'")
    timestampCol <- paste(fileData$Date,fileData$Time)
    fileData$DateTime <- strptime(timestampCol, format="%Y-%m-%d %H:%M:%S")
    powerConsumptionData <<- fileData
	message("Loaded data to 'powerConsumptionData' variable")
  }
}

# Attempt to load data
loadData()