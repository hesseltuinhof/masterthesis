######################################################
#
# Brownian Motion Simulation
#
# Date:   2014-09-24
# Author: Hessel Tuinhof
# 
# Simulate a Brownian Motion.
#
# Reference:
# - https://www.stat.berkeley.edu/~aldous/Research/Ugrad/ZY1.pdf
# - http://lben.epfl.ch/files/content/sites/lben/files/users/179705/Simulating%20Brownian%20Motion.pdf
#
######################################################

# define colors
rouge = rgb(0.79, 0.0, 0.1)

# configure parameters
n <- 2500

# set seed
set.seed(31415926)

#run simulation
par(mfrow=c(1,1))
plot(cumsum(rnorm(n, 0, 1)), type = 'l', col = rouge, xlab = '', ylab = 'position')
plot(cumsum(rnorm(n, 0, 1)), cumsum(rnorm(n, 0, 1)), type = 'l', col = rouge, xlab = 'x-position', ylab = 'y-position')
