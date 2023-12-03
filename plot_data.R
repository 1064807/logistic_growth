#Script to plot the logistic growth data

growth_data <- read.csv("experiment2.csv")

install.packages("ggplot2")
library(ggplot2)

ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  theme_bw()

ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  theme_bw()

ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  scale_y_continuous(trans='log10')

#To make a graph showing 
ggplot(aes(t, N), data = growth_data) +

  geom_point() +

  geom_vline(xintercept = c(400,1000), linetype = "dashed", color = "blue") +

  labs(title = "Logistic Growth Plot",
       
       x = "Time (t)",
       
       y = "Population Size (N)")+

  scale_y_continuous(trans='log10')
   ```
