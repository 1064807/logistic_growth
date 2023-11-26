# Logistic Growth  🧫

Here are the R scripts for a reproducible analysis of logistic growth using "experiment2.csv" 🔗 : 

When fitting a linear model, I used:
• *t<400* for datasubset1 (i.e. Case 1 where K >> N0 and t is small; this is a point in time prior to the population plateauing)
• *t>1000* for datasubset2 (i.e. Case 2 where N(t) = K; this is a point in time after the population reaches carrying capacity, K)


From this, I extracted:
N0 = 7.5907133 This is the intercept of summary of model 1 from datasubset1 (linear model)
  
r = 0.0299202 This is the gradient of summary of model 1 from datasubset1 
  
K = 1000000000 This is the intercept of summary of model 2 from datasubset2

![GitHub Logo](https://github.com/logos/github-logo.png)
