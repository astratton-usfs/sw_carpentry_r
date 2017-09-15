rm(list = ls())
#print(head(iris))

coeff_of_var <- function(x, remove_nas = FALSE) {
  sdx <- sd(x, na.rm = remove_nas)
  mx <- mean(x, na.rm = remove_nas)
  covx <- sdx/mx
  return(covx)
}
# sdx = "Hi"
# samp <- rnorm(100, mean = 20, sd = 3)
# answ <- coeff_of_var(samp, TRUE)
# print(answ)

# returns difference of cov of x and y (cov = sd/mean)
diff_of_cov <- function(x, y, remove_nas = FALSE){
  covx <- coeff_of_var(x, na.rm = remove_nas)
  covy <- coeff_of_var(y, na.ram = remove_nas)
  return(covx - covy)
}

samp1 <- rnorm(100, mean = 20, sd = 3)
samp2 <- rnorm(50, mean = 20, sd = 1)
samp3 <- rnorm(100, mean = 20, sd = 5)

samples <- list(samp1 = samp1, samp2 = samp2, samp3 = samp3)
covs = list(samp1 = coeff_of_var(samples$samp1), 
            samp2 = coeff_of_var(samples$samp2),
            samp3 = coeff_of_var(samples$sape3))

str(covs)

print(coeff_of_var)

covs <- lapply(samples, coeff_of_var)
str(covs)

