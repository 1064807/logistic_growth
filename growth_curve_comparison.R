#library(ggplot2)

#Creating a graph that compares the exponential and logistic growth curves (using the same parameter estimates I found in Question 1

ggplot(aes(t, N), data = growth_data) +

  geom_function(fun = exp_growth_fun, aes(colour = "Exponential Growth Curve"), size = 1) +

  geom_function(fun = logistic_fun, aes(colour = "Logistic Growth Curve"), size = 1) +

xlim(0, 750) +  # Set the x-axis limit

  labs(title = "Growth Curves until t = 750", x = "Time", y = "Population Size") +

  scale_color_manual(values = c("Exponential Growth Curve" = "blue", "Logistic Growth Curve" = "red")) +

  theme_minimal()

#Creating a graph that compares the exponential and logistic growth curves (using the same parameter estimates I found in Question 1) however, a log transformation has been applied to the population size

ggplot(aes(t, N), data = growth_data) +

  geom_function(fun = exp_growth_fun, aes(colour = "Exponential Growth Curve"), size = 1) +

  geom_function(fun = logistic_fun, aes(colour = "Logistic Growth Curve"), size = 1) +

  xlim(0, 5000) +  # Set the x-axis limit

  scale_y_log10() +  # Log transformation for the y-axis

  labs(title = "Growth Curves until t = 5000", x = "Time", y = "Population Size (log scale)") +

  scale_color_manual(values = c("Exponential Growth Curve" = "blue", "Logistic Growth Curve" = "red")) +
  theme_minimal()
