a1=read.table("/Users/anirudhgambhir/Documents/COLLEGE/SEM5/R Prog./Datasets/Coursera Datasets/household_power_consumption.txt",na.strings = "?",header = T,sep = ';')
a1$Date=as.Date(a1$Date,format = "%d/%m/%Y")
a1=subset(a1,a1$Date=="2007-02-01"|a1$Date=="2007-02-02")
a1$Date=as.POSIXlt(a1$Date,format = "%H:%M:%S")
head(a1,3)
dim(a1)
hist(a1$Global_active_power,col = "red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)",ylab = 'Frequency')
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()
