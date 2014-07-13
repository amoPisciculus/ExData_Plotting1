# Return rows only from 2007-02-01 and 2007-02-02
  
powerData <- read.table(pipe('grep "^[1-2]/2/2007" "household_power_consumption.txt"'),header=F, sep=';')
  
# Convert Date and Time columns to appropriate
# Date and Time classes from character classes
powerData[,1] <- as.Date(powerData[,1])
powerData[,powerData$Time] <- strptime(powerData[,powerData$Time], format="%H:%M:%S")


