# library(ggplot2)
# 
# 
# set.seed(124345)
# lambda <- 0.2
# rate <- 1/lambda
# n<- 40
# 
# mn <- NULL
# variance <- NULL
# #expon <- NULL
# 
# for(i in 1:1000){
#   expon <- rexp(n,lambda)
#   mn <- c(mn,mean(expon))
#   variance <- c(variance, var(expon)) 
# }
# 
# pMean <- mean(mn)
# pVariance <- mean(variance) # average variance or point where variances are centered toward
# 
# 
# gg <- qplot(mn,ylab="Frequency", geom = "histogram", xlab="Sample Mean", main="Sample Mean Distribution of 1000 Simulations of 40 Exponentials")
# gg <- gg + geom_histogram(fill="white", color="black") 
# gg <- gg + geom_vline(lwd=1.5, xintercept = pMean, colour = "red", lty=3) 
# gg
# 
# 
# ##
# gg2 <- qplot(variance,ylab="Frequency", geom = "histogram", xlab="Sample Variance", main="Sample Variance Distribution of 1000 Simulations of 40 Exponentials")
# gg2 <- gg2 + geom_histogram(fill="white", color="black") + geom_vline(lwd=1.5, xintercept = pVariance, colour = "red", lty=3) 
# 
# 
# gg2
# 
# 
# gg3 <- qplot(mn,ylab="Density", geom = "density", xlab="Sample Mean", main="Sample Mean Distribution of 1000 Simulations of 40 Exponentials") + geom_density(fill="green", color = "black")
# gg3 <- gg3 + geom_vline(lwd=1.5, xintercept = pMean, colour = "red", lty=3)
# gg3
# 
# 
# print(sqrt(pVariance))



############################ Part 2###################


data(ToothGrowth)

library(data.table)
dt <- data.table(ToothGrowth)
dt[which(dt[, len > 30]), ] 

summary(dt)
table(dt$supp, dt$dose)


with(dt, qplot(dose,len, colour=supp) )


ag <- aggregate(dt$len, by = list(dt$supp), mean)
ag2 <- aggregate(dt$len, by = list(dt$dose,dt$supp), mean)

print(ag)
print(ag2)

t.test(dt$len[dt$supp=="OJ"], dt$len[dt$supp=="VC"], paired = FALSE )

t.test(dt$len[dt$dose== 0.5], dt$len[dt$dose== 1], paired = FALSE )

t.test(dt$len[dt$dose== 1], dt$len[dt$dose== 2], paired = FALSE )

t.test(dt$len[dt$dose== 0.5], dt$len[dt$dose== 2], paired = FALSE )



