exam <- csv_exam
head(exam)
tail(exam)
View(exam)
str(exam)
summary(exam)

df_mpg = ggplot2::mpg
class(exam)

library(dplyr)

df_raw = data.frame(var1 = c(1,2,1) ,var2 = c(2,3,2))


save(df_raw,file = 'Data/df_raw.20200212_v1.rda')

df_new <- df_raw

df_new <- rename(df_new,v2=var2,v1=var1)

library(ggplot2)

dt_mpg<-mpg

dt_mpg <- rename(dt_mpg,city=cty)
dt_mpg <- rename(dt_mpg,highway=hwy)

df_new$mean <-(df_new$v1+df_new$v2)/2
df_new$sum <-(df_new$v1+df_new$v2)

df_mpg = mpg
df_mpg$total = (df_mpg$hwy + df_mpg$cty)/2
hist(df_mpg$total)
df_mpg$test <- ifelse(df_mpg$total >= 20.55,"pass",NA)
table(df_mpg$test)
df_mpg$test <- ifelse(df_mpg$total >= 30,"A",ifelse(df_mpg$total >= 20,"B","C"))
table(df_mpg$test)
hist(df_mpg$total)

df_midwest <- ggplot2::midwest
head(df_midwest)
tail(df_midwest)
dim(df_midwest)
str(df_midwest)
summary(df_midwest)
table(df_midwest)

df_midwest<-rename(df_midwest,total=poptotal,asian=popasian)
df_midwest$asianper <- df_midwest$asian / df_midwest$total
hist(df_midwest$asianper)

totalmean<-mean(df_midwest$asianper)
df_midwest$size <- ifelse(df_midwest$asianper >= totalmean,"large","small")
table(df_midwest$size)
qplot(df_midwest$size)

