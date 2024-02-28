
mtcars

library(ggplot2)
library(dplyr)

hist(mtcars$mpg)

sum1 <- mtcars %>% group_by(gear) %>% count()

ggplot(sum1, aes(x=gear, y=n, fill=factor(gear))) + geom_bar(stat='identity') + geom_text(aes(label=n))

plot(mtcars$wt, mtcars$mpg)
       