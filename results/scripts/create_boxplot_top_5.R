rf_all <- read.csv("/home/elch/Documents/master_thesis/results/csv/ACCURACY_RF_WIFI_BT_GSM.csv",header=T,sep=",")
rf_all <- t(rf_all)

nb_wifi <- read.csv("/home/elch/Documents/master_thesis/results/csv/ACCURACY_NB_WIFI.csv",header=T,sep=",")
nb_wifi <- t(nb_wifi)

rf_wifi_bt <- read.csv("/home/elch/Documents/master_thesis/results/csv/ACCURACY_RF_WIFI_BT.csv",header=T,sep=",")
rf_wifi_bt <- t(rf_wifi_bt)

rf_wifi <- read.csv("/home/elch/Documents/master_thesis/results/csv/ACCURACY_RF_WIFI.csv",header=T,sep=",")
rf_wifi <- t(rf_wifi)

first <- as.numeric(rf_all[2,53:103])
second <- as.numeric(nb_wifi[2,53:103])
third <- as.numeric(rf_wifi_bt[2,104:ncol(rf_wifi_bt)])
fourth <- as.numeric(rf_wifi[2,53:103])
fifth <- as.numeric(rf_wifi[2,104:ncol(rf_wifi)])

png("/home/elch/Documents/master_thesis/results/img/ACCURACY_TOP_5.png",500,300)
boxplot(first,second,third,fourth,fifth,
names=c("A","B","C","D","E"),ylim=c(0,20),xlab="Setting",ylab="Accuracy")
graphics.off()
