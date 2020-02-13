library(dplyr)
library(ggplot2)
outlier <- data.frame(sex = c(1,2,1,3,2,1),
                      score = c(5,4,3,4,2,6))
table(outlier$sex)
table(outlier$score)

outlier$sex <- ifelse(outlier$sex == 3, NA, outlier$sex)
outlier$score<- ifelse(outlier$score>5|outlier$score==0,NA,outlier$score)
outlier

outlier %>% filter(!is.na(sex)&!is.na(score)) %>% group_by(sex) %>% summarise(mean_Score = mean(score))

df_mpg <- as.data.frame(mpg)
str(df_mpg)
boxplot(df_mpg$hwy)
result <- boxplot(df_mpg$hwy)
class(result)
result$stats

mpg %>% group_by(drv) %>% summarise(mean_hwy = mean(hwy,na.rm = T))
