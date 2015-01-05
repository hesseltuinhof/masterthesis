######################################################
#
# Fractional Brownian Motion (FBM) Simulation
#
# Date:   2014-09-24
# Author: Hessel Tuinhof
# 
# Simulate a FBM using the circulant method by Davis
# Harte for different values of H.
#
# Reference: 
# - http://www2.isye.gatech.edu/~adieker3/fbm.html
# - http://cran.r-project.org/web/packages/dvfBm/dvfBm.pdf
#
# Required packages: dvfBm
#
######################################################

# load packages
library('dvfBm')

# define colors
rouge = rgb(0.79, 0.0, 0.1)

# configure parameters
n <- 1000
H = c(0.2, 0.5, 0.8)

# set seed
set.seed(31415926)

# run simulation
par(mfrow=c(3,1)) 
for (i in 1:length(H))
{
  tmp.path <- circFBM(n, H[i], plotfBm = FALSE)
  plot(tmp.path, type = 'l', col = rouge, xlab = '', ylab = sprintf('H=%s',H[i]))
  remove(tmp.path)
}
