library(openxlsx) 
library(ggplot2) 
luty <- read.xlsx ("archive.xlsm", sheet = 1)  
luty$Measure.Time <- as.POSIXct(luty$Measure.Time * (60*60*24), origin="1899-12-30",tz="GMT") #konwersja danych
marzec <- read.xlsx ("archive(1).xlsm", sheet = 1)  
marzec$Measure.Time <- as.POSIXct(marzec$Measure.Time * (60*60*24), origin="1899-12-30",tz="GMT")
kwiecien <- read.xlsx ("archive(2).xlsm", sheet = 1)  
kwiecien$Measure.Time <- as.POSIXct(kwiecien$Measure.Time * (60*60*24), origin="1899-12-30",tz="GMT")
maj <- read.xlsx ("archive(2).xlsm", sheet = 1)  
maj$Measure.Time <- as.POSIXct(maj$Measure.Time * (60*60*24), origin="1899-12-30",tz="GMT")
czerwiec <- read.xlsx ("archive(3).xlsm", sheet = 1)  
czerwiec$Measure.Time <- as.POSIXct(czerwiec$Measure.Time * (60*60*24), origin="1899-12-30",tz="GMT")
lipiec <- read.xlsx ("archive(4).xlsm", sheet = 1)  
lipiec$Measure.Time <- as.POSIXct(lipiec$Measure.Time * (60*60*24), origin="1899-12-30",tz="GMT")

rok <- rbind(luty, marzec, kwiecien, maj, czerwiec, lipiec) #polaczone 5 arkuszy "archive(1-4)" z pliku JASIEN(opad)

ggplot(data = rok, aes(x = Measure.Time, y = `Opad.[mm]`))+ geom_bar(stat = "identity")
            