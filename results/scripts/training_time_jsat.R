rf <- c(0.556, 0.864, 1.113, 1.805, 1.946, 2.014, 2.078)
nb <- c(0.019, 0.052, 0.064, 0.1, 0.114, 0.158, 0.203)

g_range <- range(0,4.5)

png("/home/elch/Documents/master_thesis/results/img/TRAINING_TIME_JSAT.png",500,500)
plot(rf, type="o", col="blue", ylim=g_range, 
   axes=FALSE, ann=FALSE)

axis(1, at=1:7, lab=c("G","W","WG","B","BG","WB","WBG"))
axis(2, las=1, at=c(0.0,0.5,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5))

box()

lines(nb, type="o", pch=22, lty=2, col="red")
title(xlab="Signal Type Combinations")
title(ylab="Avg. Training Time in seconds")

legend(1, g_range[2], c("Random Forest","Naive Bayes"), cex=0.8, 
   col=c("blue","red"), pch=21:22, lty=1:2);
graphics.off()
