# Function that reads and plots data from electric power consumption 
# dataset 
powerReader <- function(file) {
  # 'file' is the name of the dataset file to be read 
  # Return rows only from 2007-02-01 and 2007-02-02
  
  powerData <- read.csv(file)
  
  # Convert Date and Time columns to appropriate
  # Date and Time classes from character classes
  powerData[,'Date'] <- as.Date(powerData[,'Date'])
  powerData[,'Time'] <- strptime(powerData[,'Time'])
  
  # Set bounds for reading data
  DATE_1 <- powerData$Date=='2007-02-01'
  DATE_2 <- powerData$Date=='2007-02-02'
  
  # Enforce bounds on dataset
  return
  powerData[(DATE_1 | DATE_2),]
}

