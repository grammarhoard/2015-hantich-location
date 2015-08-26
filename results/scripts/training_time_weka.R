rf <- c(2.247, 2.354, 2.384, 3.112, 3.303, 3.604, 4.553)
nb <- c(0.015, 0.041, 0.065, 0.095, 0.127, 0.158, 0.172)

g_range <- range(0, rf, nb)

png("../img/TRAINING_TIME_WEKA.png",500,500)
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
