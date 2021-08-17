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

plot(vec_combo, type ="b", col="blue", pch=5, xaxt="n", xlab="", ylab="")

title(xlab= "vec", ylab = "values", main = "vec_combo", col.main="Red")

#Write a R program to create a Data frames

Dante <- c('Dante M', 44, 'Manager', 15)
Hen <- c('Henrietta M',28,'Team Leader', 3)
Zoe <- c('Zoe P',30,'Human Resources', 5)
Thandiwe <- c('Thandiwe N', 36, 'PR', 3)
Manni<- c('Munroe J', 32, 'Model', 6)

frame <- data.frame (Dante, Hen, Zoe, Thandiwe, Manni)

print(frame)


#Create a simple bar plot of five subjects
x<- c(25, 30, 28, 32, 24)
y<- c(1, 2, 3, 4, 5)
plot(x, y)
plot(x, y, type="b")


#Write a R program to take input from the user (name and age) and display the values
name<-readline("Hi, What is your name? ")

age<-readline("How old are you?")

output<-paste("So your name is ", name , " and you are" , age) 
print(output)

#Write a R program to create a sequence of numbers from 20 to 50

print(seq(20,50))

sum(seq(20,60))/length(seq(20,60))

sum(seq(51,91))

#Write a R program to create a vector which contains 10 random integer values between -50 and +50

rand10 <- (runif(10, min=-50, max=50))

print(rand10)
