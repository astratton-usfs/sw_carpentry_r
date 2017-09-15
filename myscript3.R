rm(list = ls())
# ages <- c(10, 20, NA, 7)
# firstnames <- c("Joe", "Kim", "Bob", "Jim")
# 
# people <- data.frame(firstnames, ages, stringAsFactors = FALSE)
# people$dietarypreference <- c("Vegan", "Authoritarian", "Omnivore", "Meat Only")
# people$species <- "Human"
# colnames(people) <- c("First", "Age", "Diet", "Species")
# rownames(people) <- c("p1", "p2", "p3", "p4")
# 
# print(people)
# print(people$Age)
# non_na_people <- people[!is.na(people$Age) , ]
# print(non_na_people)
# 
# people_sorted_by_age <- people[order(people$Age), ]
# print(people_sorted_by_age)

USArrests$State <- rownames(USArrests)
#print(USArrests)
crime <- USArrests
#print(crime$Murder - crime$Rape)
murder_gt_rape <- crime[crime$Murder > 0.5*crime$Rape, ]
#print(murder_gt_rape)
# print("Median murder rate:")
# print(median(crime$Murder))
high_murder <- crime[crime$Murder > median(crime$Murder), ]
# high_murder_sorted <- high_murder[order(high_murder$Murder), ]
# print("High murder states:")
# print(high_murder_sorted)

low_murder <- crime[crime$Murder <= median(crime$Murder), ]
low_murder_sorted <- low_murder[order(low_murder$Murder), ]
# print(" ")
# print("Low murder states:")
# print(low_murder_sorted)

tres <- t.test(high_murder$Assault, low_murder$Assault)
str(tres)
print(tres$p.value)












