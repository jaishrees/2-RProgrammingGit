#Author: Jaishree 6/7/2015 2am
#--------------------------------------------------------------------
setwd("E:\\Jaishree\\Coursera\\2-RProgramming")
#Q1: The R language is a dialect of which of the following programming languages?
Q1options <- c("S", "Lisp","Fortran","C")
paste("Q1 answer is", Q1options[[1]])
print("--------------------------------------------------------------")
#Q2: The definition of free software consists of four freedoms (freedoms 0 through 3). Which of the following is NOT one of the freedoms that are part of the definition?
Q2options <- c("The freedom to improve the program, and release your improvements to the public, so that the whole community benefits.",
"The freedom to run the program, for any purpose.",
"The freedom to restrict access to the source code for the software.",
"The freedom to study how the program works, and adapt it to your needs.")
paste("Q2 answer is", Q2options[[3]])
print("--------------------------------------------------------------")
#Q3: In R the following are all atomic data types EXCEPT
Q3options <- c("logical","numeric","complex","list")
paste("Q3 answer is", Q3options[[4]])
print("--------------------------------------------------------------")
#Q4: If I execute the expression x <- 4L in R, what is the class of the object `x' as determined by the `class()' function?
Q4options <- c("logical","complex","integer","matrix")
x <- 4L
class(x)
paste("Q4 answer is", Q4options[[3]])
print("--------------------------------------------------------------")
#Q5: What is the class of the object defined by x <- c(4, TRUE)?
Q5options <- c("list","matrix","character","numeric")
class(x <- c(4, TRUE))
paste("Q6 answer is", Q5options[[4]])
print("--------------------------------------------------------------")
#Q6: If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), what is produced by the expression cbind(x, y)?
Q6options <- c("a numeric matrix with 3 rows and 2 columns",
               "a 2 by 3 matrix",
               "a vector of length 3",
               "a vector of length 2")
x <- c(1,3, 5) 
y <- c(3, 2, 10)
cbind(x,y)
paste("Q6 answer is", Q6options[[1]])
print("--------------------------------------------------------------")
#Q7: A key property of vectors in R is that
Q7options <- c("elements of a vector can be of different classes",
               "elements of a vector can only be character or numeric",
               "elements of a vector all must be of the same class",
               "a vector cannot have have attributes like dimensions")
paste("Q7 answer is", Q7options[[3]])
print("--------------------------------------------------------------")
#Q8: Suppose I have a list defined as x <- list(2, "a", "b", TRUE). What does x[[1]] give me?
Q8options <- c("a list containing the letter a.",
               "a numeric vector of length 1.",
               "a character vector containing the element 2.",
               "a list containing the number 2.")
x <- list(2, "a", "b", TRUE)
x[[1]]
paste("Q8 answer is", Q8options[[4]])
print("--------------------------------------------------------------")
#Q9: Suppose I have a vector x <- 1:4 and a vector y <- 2. What is produced by the expression x + y?
Q9options <- c("a numeric vector with elements 3, 2, 3, 6.",
               "a numeric vector with elements 3, 4, 5, 6.",
               "an integer vector with elements 3, 2, 3, 6.",
               "an integer vector with elements 3, 2, 3, 4.")
x <- 1:4 
y <- 2
x + y
paste("Q9 answer is", Q9options[[2]])
print("--------------------------------------------------------------")
#Q10: Suppose I have a vector x <- c(17, 14, 4, 5, 13, 12, 10) and I want to set all elements of this vector that are greater than 10 to be equal to 4. What R code achieves this?
Q10options <- c("x[x > 10] == 4",
                "x[x < 10] <- 4",
                "x[x == 4] > 10",
                "x[x > 10] <- 4")
x <- c(17, 14, 4, 5, 13, 12, 10)
x[x > 10] <- 4
x
paste("Q10 answer is", Q10options[[4]])
print("--------------------------------------------------------------")
W1Quizdata <- read.csv("hw1_data.csv")
print("--------------------------------------------------------------")
#Q11: In the dataset provided for this Quiz, what are the column names of the dataset?
Q11options <- c("Month, Day, Temp, Wind",
                "Ozone, Solar.R, Wind, Temp, Month, Day",
                "1, 2, 3, 4, 5, 6",
                "Ozone, Solar.R, Wind")
names(W1Quizdata)
paste("Q11 answer is", Q11options[[2]])
print("--------------------------------------------------------------")
#Q12: Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
Q12options <- c("Ozone Solar.R Wind Temp Month Day
1    18     224 13.8   67     9  17
2    NA     258  9.7   81     7  22",
                "Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2",
                "Ozone Solar.R Wind Temp Month Day
1     9      24 10.9   71     9  14
2    18     131  8.0   76     9  29",
                "Ozone Solar.R Wind Temp Month Day
1     7      NA  6.9   74     5  11
2    35     274 10.3   82     7  17")
W1Quizdata[1:2,]
paste("Q12 answer is", Q12options[[2]])
print("--------------------------------------------------------------")
#Q13: How many observations (i.e. rows) are in this data frame?
Q13options <- c("45",
                "153",
                "160",
                "129")
nrow(W1Quizdata)
paste("Q13 answer is", Q13options[[2]])
print("--------------------------------------------------------------")
#Q14: Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
Q14options <- c("Ozone Solar.R Wind Temp Month Day
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30",
                "Ozone Solar.R Wind Temp Month Day
152    34     307 12.0   66     5  17
153    13      27 10.3   76     9  18",
                "Ozone Solar.R Wind Temp Month Day
152    11      44  9.7   62     5  20
153   108     223  8.0   85     7  25",
                "Ozone Solar.R Wind Temp Month Day
152    31     244 10.9   78     8  19
153    29     127  9.7   82     6   7")
mydata[c(nrow(W1Quizdata)-1,nrow(W1Quizdata)),]
paste("Q14 answer is", Q14options[[1]])
print("--------------------------------------------------------------")
#Q15: What is the value of Ozone in the 47th row?
Q15options <- c("63",
                "34",
                "21",
                "18")
W1Quizdata[47,1]
paste("Q15 answer is", Q15options[[3]])
print("--------------------------------------------------------------")
#Q16: How many missing values are in the Ozone column of this data frame?
Q16options <- c("43",
                "9",
                "78",
                "37")
nrow(subset(W1Quizdata, is.na(Ozone)))
sum(is.na(W1Quizdata$Ozone))
paste("Q16 answer is", Q16options[[4]])
print("--------------------------------------------------------------")
#Q17: What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
Q17options <- c("53.2",
                "42.1",
                "18.0",
                "31.5")
mean(W1Quizdata$Ozone,na.rm=TRUE)
paste("Q17 answer is", Q17options[[2]])
print("--------------------------------------------------------------")
#Q18: Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
Q18options <- c("212.8",
                "205.0",
                "185.9",
                "334.0")
Q18sub = subset(W1Quizdata, Ozone > 31 & Temp > 90, select = )
Q18sub = subset(Q18sub, , select = Solar.R)
mean(Q18sub$Solar.R)
paste("Q18 answer is", Q18options[[1]])
print("--------------------------------------------------------------")
#Q19: What is the mean of "Temp" when "Month" is equal to 6?
Q19options <- c("79.1",
                "90.2",
                "75.3",
                "85.6")
Q19sub = subset(W1Quizdata, Month==6, select =Temp )
mean(Q19sub$Temp)
paste("Q19 answer is", Q19options[[1]])
print("--------------------------------------------------------------")
#Q20: What was the maximum ozone value in the month of May (i.e. Month = 5)?
Q20options <- c("18",
                "97",
                "115",
                "100")
max(W1Quizdata$Ozone [W1Quizdata$Month==5], na.rm=TRUE)
paste("Q20 answer is", Q20options[[3]])



