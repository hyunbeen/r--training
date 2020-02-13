var1 <- 10
var1
class(var1)
mode(var1)
str(var1)
dim(var1)
summary(var1)
#1var <- 20
var_name <- 30
class(var_name)
mode(var_name)
str(var_name)
dim(var_name)
summary(var_name)

한글변수<-30
class(한글변수)
cat(한글변수)
#aplha <- seq('a','z',1)

vec13 <- c(1,2,3,c(4,5,6),7:10)
vec13
vec13 <- vec13 ** 2
vec13
string2 <- paste(vec13,collapse=",")
string2

df_mpg<-ggplot2::mpg
str(df_mpg)
df_mpg$total_avg <- (df_mpg$hwy*0.55+df_mpg$cty*0.45)
my_avg <- 1.0*(mean(df_mpg$total_avg)) 
my_median <- 1.0*(median(df_mpg$total_avg)) 
qplot(data=df_mpg,x=total_avg)
qplot(data=df_mpg,x=(total_avg>my_avg))
qplot(data=df_mpg,x=(total_avg>my_median))
