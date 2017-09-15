rm(list = ls()) # clears previous data at the beginning of the script
#a <- 4
#print(a)

#b <- c(4, 5, 6, 7, 3, 2, 4, 5, 4, 6, 5, 6, 7, 10, 45, 5, 7, 5, 4, 7, 6,7 ,5 ,8 ,9, 2)
#print(b)

#x <- c(4.7, 3.5, "joe")  # will change the numbers to characters
#print(x)
#x_as_int <- as.integer(x)
#print(x_as_int)

#names <- c("Bob", "Joe", "Kim")
#name <- "Shawn"
#print(names)
#print(name)

#y <- c(10, 20, 30, 40)
#z <- y[c(3, 2)]
#print(z)
#print(length(z))
#y[3] <- 300
#y[c(3, 2)] <- c(300, 200)

# ages <- c(37, 24, 18, 41, 22)
# mean_age <- mean(ages)
# print(mean_age)
# selector <- ages > mean_age
# print(selector)
# gt_mean_ages <- ages[selector]
# print(gt_mean_ages)
# gt_mean_ages <- ages[ages > mean(ages)]
# print(gt_mean_ages)

# samp <- rnorm(100, mean = 20, sd = 3)
# print(samp)
# selector <- samp > 25
# gt_25 = samp[selector]
# print(gt_25)
# gt_25_len = length(gt_25)
# print(gt_25_len)
# 
# print(quantile(samp, c(0.83, 0.95)))

# ages <- c(10, 20, NA, 7)
# names <- c("Jim", "Kim", "Bob", "Joe")
# mean_ages <- mean(ages) # NA
# na_ages <- is.na(ages)  # F F T F
# non_na_ages <- ages[!na_ages] # 10 20 7
# non_na_names <- names[!na_ages] # Jim Kim Joe
# print(mean(non_na_ages))
# print(mean(ages, na.rm = T))
# 
# ages_order <- order(ages)
# print(ages_order)
# ages_sorted <- ages[ages_order]  # ages[order(ages)]
# names_sorted <- names[ages_order]
# print(names_sorted)

# ages <- c(10, 20, NA, 7)
# names(ages) <- c("Joe", "Kim", "Bob", "Jim")
# age_subset <- ages[c("Joe", "Bob")]
# print(age_subset)

#Lists
melanie <- list(numkids = 2, c(24, 21),
                nameskids = c("Rayne", "Dane"),
                degrees = c("AA", "BA", "MS", "PhD"),
                spouse = list(nationality = "Cuban", experience = c("life", "awesome")))

melanie_part_2 <- melanie[2]
#print(melanie_part_2)

kids_ages <- melanie[[2]]
#print(kids_ages)
#print(melanie[[2]][2]) # melanie[[2]] is vector, [2] is subvector

attr(melanie, "CurrentWorkshop") <- "Software Carpentry"

print(melanie)
str(melanie)

# names(melanie) <- c("numkids", "agesKids", "nameskids", "degree", "spouse")
# 
# melanie <- list(2, c(24, 21),
#                 c("Rayne", "Dane"),
#                 c("AA", "BA", "MS", "PhD"),
#                 list("Cuban"), c("life", "awesome"))

Gonna make a change here...














