unzip("C:\\Users\\Sohom\\Downloads\\archive.zip",exdir="C:\\Users\\Sohom\\Downloads\\R_heartdisease")
files<-list.files("C:\\Users\\Sohom\\Downloads\\R_heartdisease",full.names=TRUE)
print(files)
data<-read.csv("C:\\Users\\Sohom\\Downloads\\R_heartdisease/heart.csv")
View(data)

#eda
summary(data)
library(dplyr)
glimpse(data)

# Check for missing values
sum(is.na(data))

#plots
# Histogram for Age
hist(data$age, 
     main = "Age Distribution", 
     xlab = "Age", 
     ylab = "Frequency", 
     col = "skyblue", 
     border = "black")

# Histogram for Cholesterol
hist(data$chol, 
     main = "Cholesterol Distribution", 
     xlab = "Cholesterol", 
     ylab = "Frequency", 
     col = "skyblue", 
     border = "black")

# Boxplot for Age
boxplot(data$age, 
        main = "Boxplot of Age", 
        ylab = "Age", 
        col = "lightyellow", 
        border = "black")

# Boxplot for Cholesterol
boxplot(data$chol, 
        main = "Boxplot of Cholesterol", 
        ylab = "Cholesterol", 
        col = "lightyellow", 
        border = "black")

# Scatter plot of Age vs. Cholesterol
plot(data$age, data$chol, 
     main = "Age vs. Cholesterol", 
     xlab = "Age", 
     ylab = "Cholesterol", 
     col = "pink",
     pch = 16)

# Scatter plot of Max Heart Rate vs. Cholesterol
plot(data$thalachh, data$chol, 
     main = "Max Heart Rate vs. Cholesterol", 
     xlab = "Max Heart Rate", 
     ylab = "Cholesterol", 
     col = "lightcoral", 
     pch = 16)
