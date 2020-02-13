exam<-csv_exam
(df_temp <- exam %>% filter(class == 1))
(df_temp <- exam %>% filter(class == 2))

exam %>%  filter(class %in% c(1,3,5))

class1 <- exam %>% filter(class == 1)
class2 <- exam %>% filter(class == 2)

mean(class1$math)

displ4 <- mpg%>%filter(displ<=4)
displ5 <- mpg%>%filter(displ>=5)
mean(displ4$hwy)
mean(displ5$hwy)

exam %>% select(id,math) %>% filter(math>30)

exam %>% select(-english) %>% filter(math>30)

df_suv <- mpg %>% select(class,cty) %>% filter(class=="suv")
df_compact <- mpg %>% select(class,cty) %>% filter(class=="compact")
mean(df_suv$cty)
mean(df_compact$cty)
(prod(df_compact$cty))**(1/length(df_compact$cty))


exam %>% arrange(math)
exam %>% arrange(class,-math)
exam %>% arrange(class,desc(math))
mpg
mpg %>% filter(manufacturer == 'audi') %>% arrange(desc(hwy)) %>% head(5)

exam %>% mutate(total=math+english+science,mean=total/3) %>% arrange(-total) %>%  head
