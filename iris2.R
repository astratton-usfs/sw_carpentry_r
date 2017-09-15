rm(list = ls())

write.table(iris, file = "iris.txt", quote = FALSE, 
            sep = "\t", row.names = FALSE,
            col.names = TRUE)

iris2 <- read.table("iris.txt", header = TRUE, sep = "\t",
                    stringsAsFactors = FALSE)

print(head(iris2))

coeff_of_var <- function(x, remove_nas = FALSE) {
  sdx <- sd(x, na.rm = remove_nas)
  mx <- mean(x, na.rm = remove_nas)
  covx <- sdx/mx
  return(covx)
}

coeff_of_cols <- function(df) {
  cov <- lapply(df, coeff_of_var)
  return(cov)
}

iris2 <- iris
iris2$Species <- NULL

answer <- coeff_of_cols(iris2)
print(answer)
