mydata <- read.csv(file.choose())#opens a window that lets you select the file you need
install.packages("ggplot2") #installs the package to be used
ggplot(data=mydata, aes(x=carat, y=price)) + geom_point()
