library(ggplot2)
library(dplyr)
library(readr)

exam <- read_csv("Data/csv_exam.csv")

data <- exam %>%  summarise(mean_math = mean(math))
data$mean_math

data <- exam %>% group_by(class) %>% summarise(mean_math = mean(math) ,total_avg_score = mean(math+science+english))
data

data <- exam %>% group_by(class) %>% summarise(mean_math = mean(math)) %>% arrange(-mean_math) %>% head(3)
data

data <- exam %>% group_by(class)
data

mpg %>% 
    group_by(manufacturer,drv) %>% summarise(mean_cty = mean(cty)) %>% arrange(-mean_cty) %>%  View
mpg
mpg %>% group_by(manufacturer) %>% filter(class=='suv') %>% mutate(total = (cty+hwy)/2) %>% arrange(-total) %>% View
