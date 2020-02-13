df <- data.frame(sex=c("M","F",NA,"M","F"),
                 score=c(5,4,3,4,NA))
is.na(df)[1,]
table(is.na(df))

mean(df$score)

df_nomiss <- df %>% filter(!is.na(score)&!is.na(sex))
mean(df_nomiss$score)

df_nomiss2 <- na.omit(df)

quantile(exam$math,na.rm = T)

exam %>% summarise(mean(math))

exam[c(3,8,15),"math"]<-NA
  exam[seq(1,5,by=2)]
exam[seq(1,12,by=3),]

exam$math <- ifelse(is.na(exam$math),55,exam$math)
mean(exam$math)
