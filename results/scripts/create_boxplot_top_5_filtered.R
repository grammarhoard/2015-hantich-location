nb_wifi_bt <- read.csv("/home/elch/Documents/master_thesis/results/csv/FILTERED_NB_WIFI_BT.csv",header=T,sep=",")
nb_wifi_bt <- t(nb_wifi_bt)

knn_wifi_bt <- read.csv("/home/elch/Documents/master_thesis/results/csv/FILTERED_KNN_WIFI_BT.csv",header=T,sep=",")
knn_wifi_bt <- t(knn_wifi_bt)

rf_wifi_bt <- read.csv("/home/elch/Documents/master_thesis/results/csv/FILTERED_RF_WIFI_BT.csv",header=T,sep=",")
rf_wifi_bt <- t(rf_wifi_bt)

nb_wifi <- read.csv("/home/elch/Documents/master_thesis/results/csv/FILTERED_NB_WIFI.csv",header=T,sep=",")
nb_wifi <- t(nb_wifi)

first <- as.numeric(nb_wifi_bt[2,53:103])
second <- as.numeric(nb_wifi_bt[2,104:ncol(nb_wifi_bt)])
third <- as.numeric(knn_wifi_bt[2,53:103])
fourth <- as.numeric(rf_wifi_bt[2,104:ncol(rf_wifi_bt)])
fifth <- as.numeric(nb_wifi[2,53:103])

png("/home/elch/Documents/master_thesis/results/img/FILTERED_TOP_5.png",500,300)
boxplot(first,second,third,fourth,fifth,
names=c("A","B","C","D","E"),ylim=c(0,20),xlab="Setting",ylab="Accuracy")
graphics.off()
