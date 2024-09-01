library (datasets)
data(mtcars)
head(mtcars, 5) 

library(ggplot2)
ggplot(aes(x=disp, y= mpg,),data=mtcars)+geom_point()+ggtitle("Displacement VS Miles Per Gallon")+labs(x = "displacement", y= "Miles Per Gallon")


#make vs a factor 
mtcars$vs <- as.factor(mtcars$vs)

#box plot od distribution for v shaped and straight engines 
ggplot(aes(x=vs, y=mpg), data = mtcars)+
  geom_boxplot(alpha= 0.3) + 
  theme(legend.position = "none")

#wt histogram 
ggplot(aes(x=wt), data = mtcars) + geom_histogram(binwidth=0.5)