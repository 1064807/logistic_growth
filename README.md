# Logistic Growth

Here are the R scripts for a reproducible analysis of logistic growth using "experiment2.csv" 🔗 : 

[plot_data.R](https://github.com/1064807/logistic_growth/blob/01eb6b419153414aab758e14dfb69df2191a7393/plot_data.R)

[plot_data_and_model.R](https://github.com/1064807/logistic_growth/blob/9ca903137460af80a789528302aa59906d9a7f11/plot_data_and_model.R)

[fit_linear_model.R](https://github.com/1064807/logistic_growth/blob/9ca903137460af80a789528302aa59906d9a7f11/fit_linear_model.R)

__*Question 1*__

When fitting a linear model, I used:

- *t<400* for datasubset1 (i.e. Case 1 where K >> N<sub>0</sub> and N<sub>t</sub> is small; this is a point in time prior to the population plateauing)
- *t>1000* for datasubset2 (i.e. Case 2 where N<sub>t</sub> = K; this is a point in time after the population reaches carrying capacity, K)

This plot shows the logistic growth data with vertical lines indicating t for Case 1 and Case 2 📈

![Plot showing Logistic Growth Data with Vertical Lines Indicating t for Case 1 and Case 2 📈](https://github.com/1064807/logistic_growth/blob/3c9d9080ba1b3d1ca28986521846f5e2080dca87/plot.png)

From this, I extracted:
- __N<sub>0</sub> = 7.5907133__ This is the intercept of summary of model 1 from datasubset1 (linear model)
  
- __r = 0.0299202__ This is the gradient of summary of model 1 from datasubset1 
  
- __K = 1000000000__ This is the intercept of summary of model 2 from datasubset2

__*Question 2*__

Assuming exponential population growth:
When __t=4980 min, N<sub>t</sub>=3.902005 &times; 10<sup>65</sup>__

Assuming logistic population growth:
When __t=4980 min, N<sub>t</sub>=1 &times; 10<sup>9</sup>__

We can see that if we use the exponential model for population growth, we get a population size that extensively exceeds the carrying capacity (K). In fact, the answer is _3.902005 &times; 10<sup>56</sup>_ times larger than the carrying capacity (which is 1000000000). This is contrasted by the logistic growth model. In this model, there is a carrying capacity so the population plateaus out at 1000000000. Therefore, even at a large time point of t=4980, the population remains at carrying capacity. This difference between models can be explained biologically: the exponential models assume unlimited resources, constant birth and death rates, no density-dependent factors, and constant environmental conditions. As a result of all these assumptions, particularly the lack of density-dependent factors, the population is allowed to grow ad infinitum. This is biologically unreasonable. The logistic model does not make these assumptions as it has a carrying capacity (i.e. the equilibrium population size where the available resources in an ecosystem are sufficient to sustain the population given limited resources and density-dependent regulation).

__*Question 3*__

[This is the R script that makes a graph comparing the exponential and logistic growth curves 🔗.](https://github.com/1064807/logistic_growth/blob/628888e193ad4f3f5d7513a1eea644086640b31b/growth_curve_comparison.R)

This graph compares the exponential and logistic growth curves (using the same
parameter estimates I found in Question 1). 📈

![Graph Compares The Exponential and Logistic Growth Curves 📈](https://github.com/1064807/logistic_growth/blob/3c9d9080ba1b3d1ca28986521846f5e2080dca87/Growth_Curve.png)

This graph compares the exponential and logistic growth curves (using the same
parameter estimates I found in Question 1) however, a log transformation has been applied to the population size. 📈

![Graph Compares The Exponential and Logistic Growth Curves with a Log Transformation on Population Size📈](https://github.com/1064807/logistic_growth/blob/3c9d9080ba1b3d1ca28986521846f5e2080dca87/Growth_Curve_Log.png)
