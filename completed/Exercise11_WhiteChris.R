# Assignment: Exercise 11
# Name: White, Chris
# Date: 2020-10-18

library(tidyverse)
library(readxl)

## Set the working directory to the root of your DSC 520 directory
setwd("C:/Users/Chris/Documents/GitHub/dsc520")

## Load the `data/r4ds/heights.csv` to
housing_df <- read_excel("data/week-7-housing.xlsx")
na.omit(housing_df)
#head(housing_df)
salePrice <- housing_df$`Sale Price`
lotsqft <- housing_df$sq_ft_lot
livingsqft <- housing_df$square_feet_total_living
zipcode <- housing_df$zip5
yearbuilt <- housing_df$year_built
run_1 <- lm(salePrice~lotsqft, data = housing_df)
run_2 <- lm(salePrice~livingsqft + zipcode + yearbuilt, data = housing_df)
summary(run_1)
summary(run_2)

sbrun_1 <- lm(scale(salePrice)~scale(lotsqft), data = housing_df)
sbrun_1
sbrun_2 <- lm(scale(salePrice)~scale(livingsqft + zipcode + yearbuilt), data = housing_df)
sbrun_2

confint(run_1)
confint(run_2)

one.way <- aov(run_1~run_2, data = housing_df)

outlier(housing_df, opposite = FALSE, logical = FALSE)

largeres1 <- rstandard(run_1)
largeres2 <- rstandard(run_2)
head(largeres1)
head(largeres2)
sum(largeres1)
sum(largeres2)
