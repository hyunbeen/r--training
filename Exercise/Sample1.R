a <- 1
b <- 2
c <- 3
4/b
5*b

rm(list = ls())
cat('\f')

result <- NA
(result -1 + 1)
(result = 0/0)
(result = 2^3)

x <- c("a","a","b","c")
x
qplot(x)
qplot(data = mpg, x=hwy)
tb_mpg <- ggplot2::mpg
tb_mpg["cty"]=1
tb_mpg
str(tb_mpg)
mpg
qplot(data=mpg,x=cty)
qplot(data=mpg,x=drv,y=hwy)
qplot(data=mpg,x=drv,y=hwy,geom="line")
help(qplot)
qplot(data=mpg,x=drv,y=hwy,geom="path")
qplot(data=mpg,x=drv,y=hwy,geom="boxplot",color=fl)

sum(mpg$hwy)
var(mpg$hwy)
mean(mpg$hwy)
stdv(mpg$hwy)
a <- 1
class(a)
mode(a)
str(a)
dim(a)
summary(a)
cat(" a-",a)

library(ggplot2)
mpg
str(mpg)
class(mpg)
mode(mpg)
dim(mpg)
summary(mpg)
