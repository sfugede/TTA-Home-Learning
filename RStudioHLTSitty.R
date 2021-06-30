#Task 1 Import ggplot library
library(ggplot2)
# Find practice data set
data(package = "ggplot2")
#Create data visualisation
ggplot2::midwest

qplot(data = midwest, x = county, y = poppovertyknown, geom = "point")

qplot(data = midwest, y = county, geom = "bar", fill = popdensity)


#Additional Tasks
# create 3 vectors
vec_a <-c(75L, 80L, 65L, 94L, 53L)
vec_b <-c(10L, 18L, 38L, 47L, 27L)
vec_c <-c(8L, 12L, 96L, 100L, 2L)

#combine 3 vectors to become a matrix
vec_combo <-c(vec_a, vec_b, vec_c)
vec_combo
my_matrix <- matrix(vec_combo,nrow=5, ncol=3)

plot(vec_combo, type ="b", col="blue", pch=1)

axis(1, at=1:12, lab=names(vec_combo))

plot(vec, type ="b", col="blue", pch=5, xaxt="n", xlab="", ylab="")

title(xlab= "vec", ylab = "values", main = "vec_combo", col.main="Red")
