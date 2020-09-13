# Assignment: ASSIGNMENT 3
# Name: White, Chris
# Date: 2020-09-12

#1. What are the observational units in this study?
#Answer: Count and Score

#2. Identify the variables mentioned in the narrative paragraph and determine 
#which are categorical and quantitative?
#Answer: Quantitative variables-total points, two sections / 
#Categorical variables - Section names

#3. Create one variable to hold a subset of your data set that contains only 
#the Regular Section and one variable for the Sports Section.

#Set the program's working directory
setwd("C:/Users/Chris/Documents/GitHub/dsc520")
#Read in the data set to create the dataFrame
course_df <- read.csv(file = "data/scores.csv")

#Create a subset using the subset function
regular_section <- subset(course_df, Section=="Regular")
head(regular_section)

sports_section <- subset(course_df, Section=="Sports")
head(sports_section)
#Visualize some data to do analysis
plot(sports_section$Score, main = "Sports Section",
     xlab = "Count", ylab = "Score")

plot(regular_section$Score, main = "Regular Section",
     xlab = "Count", ylab = "Score")

#4. Use the Plot function to plot each Sections scores and the number of 
#students achieving that score. Use additional Plot Arguments to label the 
#graph and give each axis an appropriate label. 
#Once you have produced your Plots answer the following questions:

#a. Comparing and contrasting the point distributions between the two section,
#looking at both tendency and consistency: Can you say that one section tended
#to score more points than the other? Justify and explain your answer.

#Answer: The sports section plots first 10 were lower than the regular section. 
#Comparing the last 9 were similar so that was the deciding factor. 
#The Regular Section scored higher.

#b. Did every student in one section score more points than every student in the
#other section? If not, explain what a statistical tendency means in this context.

#Answer: No, the first 10 from the regular section scored higher but the last 9
#were similar. There was a divergence between the two in the lower half of the 
#scores however a similarity in the top half of the scores.

#c. What could be one additional variable that was not mentioned in the narrative
#that could be influencing the point distributions between the two sections?

#Answer: The students knew they were going to be taught sports a sports section.
#This could have skewed the results knowing what topic would be studied.



