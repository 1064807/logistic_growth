#Script to plot data and model


growth_data <- read.csv("experiment2.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- 7.5907133 #This is the intercept of summary 1 (lm, i.e. the linear model)
  
r <- 0.0299202 #This is the gradient of summary 1 
  
K <- 1000000000 #This is the intercept of summary 2

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')

