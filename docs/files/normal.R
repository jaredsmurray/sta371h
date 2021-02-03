
# pnorm(q, mean, sd) gives Pr(X<q) when X ~ N(mean, sd^2) (here N(6, 225))
pnorm(0, mean=6, sd=15)

# qnorm(p, mean, sd) *solves* Pr(X<q)=p for q when X ~ N(mean, sd^2) (here N(6, 225))
qnorm(0.02, mean=6, sd=15)

### Simulating returns

# Simulating the returns for one year. If we started with $1 at the
# beginning of the year, we'd have $val at the end
set.seed(1)
val = 1 + rnorm(1, 6, 15)/100
print(val)

# Compounding over 20 years
for(year in 2:20) {
  val = val*(1 + rnorm(1, 6, 15)/100)
}
print(val)

set.seed(1)
library(mosaic)
# Simulate and plot four other possible "futures", using some shortcuts. Unlike
# the for loop above, or the other do loop below, this approach to simulation will give 
# us the value of our investment at each time point using the cumulative product (cumprod)
futures = do(4) * {
  c(1,cumprod(1+rnorm(20, 6, 15)/100))
} 
cols=c('black', 'darkgreen', 'darkorange', 'purple')
plot(0:20, futures[1,], col=cols[1], type='l',
     ylim=c(min(futures)-0.1, max(futures)+0.1), lwd=2, ylab = 'Value of $1', xlab="year")
for(i in 2:nrow(futures)) lines(0:20, futures[i,], col=cols[i], lwd=2)

# Nice compact simulation for the value of our investment in year 20
num.sim = 10000
num.years = 20
values = do(num.sim) * {
  prod(1 + rnorm(num.years, 6, 15)/100)
}

# The $ command pulls the "result" object (column) 
# out of the object called returns
vals = values$result 
mean(vals)

sum(vals > 1.02^20)/num.sim

median(vals)

# density() takes a set of samples and computes an estimate of their probability
# density function. It's similar to a histogram, but smooth.
# Here we compute the density and plot it at the same time.
# The other arguments to plot() set various plotting parameters (main and axis titles,
# and line width (lwd = 2).)
plot(density(vals),main="Value of $1 in 20 years",xlab="$$",ylab="",lwd=2)
# abline adds lines to plots, in this case vertical lines at v, of particular colors
# (col), types (lty), and widths (lwd)
abline(v=mean(vals),lwd=2,lty=2,col=2)
abline(v=median(vals),lwd=2,lty=2,col=4)
# finally, the legend command adds a (wait for it) legend to the plot
legend('topright',c(paste("mean","(",round(mean(vals),2),")"),paste("median","(",round(median(vals),2),")")),col=c(2,4),lwd=c(2,2),lty=c(2,2))

