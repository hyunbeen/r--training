test1 <- data.frame(id=c(1,2,3,4,5),midterm=c(60,80,70,90,85))
test2 <- data.frame(id=c(1,2,3,4,5),final=c(70,83,65,95,80))
test3 <- data.frame(id=c(1,2,3),name=c('x','y','z'))
test4 <- data.frame(class=c(1,2,3,4,5),teacher=c("kim","lee","park","choi","jung"))

total<-left_join(test1,test2,by="midterm")
total<-left_join(test1,test2,by="id")
total<-left_join(total,test3,by="id")
total


library(readr)
exam <- read_csv("Data/csv_exam.csv")

exam_new <- left_join(exam,test4,by="class")
exam_new

group_a <- data.frame(id=c(1,2,3,4,5),test=c(60,70,80,90,85))
group_b <- data.frame(id=c(5,7,8,9,10),test=c(87,83,65,95,83))

group_all <- bind_rows(group_a,group_b,.id="id")
group_all <- bind_cols(group_a,group_b,group_a)
group_all
#bind_cols는 관측의 개수 bind_rows 열의 개수 마침

help(bind_rows)
