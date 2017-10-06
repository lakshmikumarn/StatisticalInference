## Week 2 Quiz

#Q2
pnorm(70,mean=80,sd=10)
#[1] 0.1586553

# Q3
qnorm(.95,mean=1100,sd=75)
# [1] 1223.364

#Q4, For sample mean remains same , sd will be population sigma (75) / sqrt(sample size n = 100)

qnorm(.95,mean=1100,sd=7.5)

#Q5 - dbinom accepts vector of quantiles

dbinom(4:5,prob=.5,size=5)
#[1] 0.15625 0.03125 for 4 & 5 heads

sum(dbinom(4:5,prob=.5,size=5)) 
#[1] 0.1875 # sum of p(4) & p(5)

## Alternatively
choose(5,4) * .5 ^ 5 + choose(5,5) * .5 ^ 5

## OR

pbinom(3,size=5,prob=.5,lower.tail = FALSE)


#Q6

# Again, we are interested in the distribution of sample means. Thus we need the sample error.
# 
# RDI_mean <- 15
# RDI_sd <- 10
# RDI_n <- 100
# RDI_sample_err <- 10/sqrt(100)
# Our sample error is 1.
# 
# Even if the individual observations are not normally distributed, CLT says that the means of samples will be normally distributed. The range we’re interested in is exactly one standard error away from the mean, so 68% of the sample means will be within this range.

#Q8
ppois(10,lambda = 5*3)
#[1] 0.1184644




