rm(list = ls())

heatData_us=read.csv("data_old/heat-wave-index-usa.csv", sep=",")
droughtData=read.csv("data_old/drought-severity-index-us.csv", sep=",")
temperaturData_us=read.csv("data_old/temperature-us.csv", sep=",")
#tornadoesData=read.csv("./BioInfo/R/tornadoes-us.csv", sep=",")

co2Data=read.csv("data_old/co-emissions-per-capita.csv", sep=",")
precipitationData_us=read.csv("data_old/precipitation_anomaly_us.csv", sep=",")
#sea_level_us=read.csv("data_old/sea-level_us.csv", sep=",")

droughtData_us = droughtData[droughtData[,1] == "United States",]
co2Data_us = co2Data[co2Data[,1] == "United States",]

co2Data_us = co2Data_us[co2Data_us[,"Year"] >= 1901,c(4)]
#sea_level_us= sea_level_us[co2Data_us[,"Year"] >= 1901,c(2)]
precipitationData_us= precipitationData_us[precipitationData_us[,"Year"] >= 1901,c(2)]
droughtData_us = droughtData_us[droughtData_us[,"Year"] >= 1901,c(3,5)]
heatData_us = heatData_us[heatData_us[,"Year"] >= 1901,c(4)]
temperaturData_us = temperaturData_us[,c(2)]
#temperaturData_us[,2] = (temperaturData_us[,2]-32)*5/9

climateset = cbind(droughtData_us, co2Data_us, temperaturData_us, heatData_us)
