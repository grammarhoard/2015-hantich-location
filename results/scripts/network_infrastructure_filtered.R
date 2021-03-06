jsat_wifi <- c(3.47, 3.79, 4.22, 4.22, 4.22)
jsat_wifi_bt <- c(2.30, 2.81, 2.96, 3.16, 3.61)
weka_wifi_bt <- c(3.02, 3.22, 3.30, 3.45, 4.0)

g_range <- range(0,5.5)

png("../img/NETWORK_INFRASTRUCTURE_FILTERED.png",500,500)
plot(jsat_wifi, type="o", col="blue", ylim=g_range, 
   axes=FALSE, ann=FALSE)

axis(1, at=1:5, lab=c("S1","S2","S3","S4","S5"))
axis(2, las=1, at=c(0.0,0.5,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5,5.0,5.5))

box()

lines(jsat_wifi_bt, type="o", pch=22, lty=2, col="red")
lines(weka_wifi_bt, type="o", pch=23, lty=3, 
   col="green")
title(xlab="Setting")
title(ylab="Avg. Accuracy in meters")

legend(4.5, 1, c("A","B","C"), cex=0.8, 
   col=c("blue","red","green"), pch=21:23, lty=1:3);
graphics.off()
