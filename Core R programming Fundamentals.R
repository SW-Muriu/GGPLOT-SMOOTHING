mydata <- read.csv(file.choose())#opens a window that lets you select the file you need
install.packages("ggplot2") #installs the package to be used
library(ggplot2) #call of the library 

#we plot carats against the price

ggplot(data=mydata, aes(x=carat, y=price)) + geom_point()

#the resulting graph is dull, with minimal detail. We color for advancement 
# The clarity is the primary variable, hence it is used for color 

ggplot(data=mydata, aes(x=carat, y=price, colour = clarity )) + geom_point()

#there are various outlines in the resulting graph, hence we minimize the picture by geom point 

ggplot(data=mydata, aes(x=carat, y=price, colour = clarity )) + geom_point(alpha = 0.1)

#we add lines of fits by the different to advance trend detail 

ggplot(data=mydata, aes(x=carat, y=price, colour = clarity )) + geom_point(alpha = 0.1)+ geom_smooth()

#the output is shadowed by the outliers, while most of the data is concentrated below the 2.5 carats
#we therefore reduce the lines of fit to this threshold

ggplot(data=mydata[mydata$carat<2.5,], 
       aes(x=carat, y=price, colour = clarity )) + 
  geom_point(alpha = 0.1)+ 
  geom_smooth()
