library(ggplot2)
hist(mpg$cty)
mpg_cty = mpg$cty


mean(mpg_cty)
median(mpg_cty)
which.max(table(mpg_cty))
n<-length(mpg_cty)
prod(mpg_cty)^(1/n)
1/mean(1/mpg_cty)
weighted.mean(mpg_cty)


sample(c(1:45),size=6,replace=FALSE)

(sort(sample(
  c(1:45),
  6,
  replace=FALSE,
  prob = 
  c(127/897,116/897,117/897,122/897,123/897,111/897,117/897,121/897,93/897, 125/897,
    122/897,128/897,126/897,127/897,121/897,114/897,131/897,128/897,125/897,126/897,
    116/897,97/897, 105/897,118/897,118/897,122/897,131/897,111/897,109/897,109/897,
    122/897,104/897,125/897,141/897,108/897,117/897,124/897,118/897,128/897,130/897,
    110/897,115/897,132/897,117/897,129/897
  )
)))





vec <- c(1,1,1,2,3,3,4,4,4,4,7,8,9,0,0)
table(vec)
table(mpg$cty)
vec <- mpg$cty
vec
View(datasets::mtcars)
mtcars <- datasets::mtcars
qplot(data=mtcars,x=mpg,y=wt)
qplot(data=mtcars,x=mpg,y=wt,color=cyl)
qplot(data=mtcars,x=mpg,y=wt,color=I('red'))
qplot(data=mtcars,x=mpg,y=wt,size=wt)
qplot(data=mtcars,x=mpg,y=wt,color=cyl,size=wt)
qplot(data=mtcars,x=mpg,y=wt,color=I('red'),size=wt)

library(ggplot2)
df_mpg = ggplot2::mpg
str(df_mpg)
#연속형변수
#displ , cty, hwy



x = df_mpg$year

table(x)              # 도수
cumsum(table(x))      # 누적도수
prop.table(table(x))  # 상대도수


# cbind{base} -> return list
freq_list <- cbind(
  Freq = table(x),
  Cumul = cumsum(table(x)), 
  Relative = prop.table(table(x)),
  RelativeCumul = cumsum(prop.table(table(x)))#누적상대도수
)


( df_freq <- as.data.frame(freq_list) )
qplot(df_mpg$manufacturer)


x = df_mpg$cty

table(x)              # 도수
cumsum(table(x))      # 누적도수
prop.table(table(x))  # 상대도수


# cbind{base} -> return list
freq_list <- cbind(
  Freq = table(x),
  Cumul = cumsum(table(x)), 
  Relative = prop.table(table(x)),
  RelativeCumul = cumsum(prop.table(table(x)))
)

( df_freq <- as.data.frame(freq_list) )
hist(df_mpg$cty,breaks=26)





x = df_mpg$hwy

table(x)              # 도수
cumsum(table(x))      # 누적도수
prop.table(table(x))  # 상대도수


# cbind{base} -> return list
freq_list <- cbind(
  Freq = table(x),
  Cumul = cumsum(table(x)), 
  Relative = prop.table(table(x)),
  RelativeCumul = cumsum(prop.table(table(x)))
)

( df_freq <- as.data.frame(freq_list) )
hist(df_mpg$hwy,breaks=32)







