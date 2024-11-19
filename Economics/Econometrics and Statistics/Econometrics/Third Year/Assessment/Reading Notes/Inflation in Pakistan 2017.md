#study
```table-of-contents
```
# Abstract
This paper analyses determinants of inflation in Pakistan over 1975 to 2015 using an ARDL methodology.
- The estimation methods find the short run *and* long run impact of each variable on inflation, and also found the speed of adjustment.
- The explanatory variables were:
	- Money supply,
		- (-)
	- National expenditure,
		- (+)
	- Imports of goods and services,
		- (+)
	- GDP growth.
		- (-)
- None of the explanatory variables proved to be a significant determinant in the short-run.
# Introduction
Maintenance of the inflation rate is one of the macroeconomic challenges faced by developing countries.
- Rising price indices raise the cost of living, reduce investment and adversely affect economic and social wellbeing (Greenidge 2015).

To be considered inflation, the rise in the general price level must be constant, enduring and sustained.

Inflation typically reduces the value of the country's currency, increasing the exchange rate compared to other currencies.
# Theoretical Background of the Model
The literature cites two major reasons explaining the factors responsible for inflation.

Demand pull inflation - inflation is the outcome of high aggregate demand in the goods and factor markets.
- High government spending, low interest rates and international prices (compared to domestic prices) are responsible for inflation.

Cost push inflation - high factor prices and a fall in aggregate supply cause inflation.
- This reduces real output and employment.
---
The classical approach - high money supply causes an increase in aggregate demand leading to a sustained increase in prices; is in the same camp as demand pull inflation. Gives us the model:
$$
\pi=F(y,m,r)
$$
- Where:
	- $\pi$ is inflation,
	- $y$ is real output,
	- $m$ is the money supply,
	- $r$ is the real interest rate.
---
The Keynesian approach - an inflationary gap is caused by a combination of demand pull and cost push. Gives us the model:
$$
\pi=F(m,U,w,y_{e},P_{e},\Delta x)
$$
- Where:
	- $\pi$ is inflation,
	- $m$ is the money supply,
	- $U$ is unemployment,
	- $w$ is the real wage,
	- $y_{e}$ is the expected output,
	- $P_{e}$ is the expected price level,
	- $\Delta x$ is export growth.
---
The supply side approach - supply of goods and services put pressure on the money supply. (Not modelled).

---
In addition to those views, there are also structural factors for inflation, such as trade policies, weather conditions, slow export growth or protectionism.
# Inflation Trends in Pakistan
After a flood in 2010 there was a rising trend of inflation.
- The core reason was the wiping out of standing crops, disturbing the supply chain.
- Food price inflation contributed to general inflation.

![[Pasted image 20241112165554.png]]
- Structural adjustment programs, liberalisation, "nuclear explosion", and a number of other factors caused upward pressure on price during the 90s.
# Review of Previous Literature
Lim and Sek (2015) conducted applied an ARDL methodology to analyse inflation panel data between high-income and low-income countries.
- None of the explanatory variables were significant for high-income countries, but all were significant for low-income countries.

Hussein and Islam (2013) studied determinants of inflation in Bangladesh. They applied an OLS regression on time series data and showed that:
- The one-year lagged value of money supply and fiscal deficit significantly affected inflation.

Umoera (2010) examined money supply, exchange rate and inflation.
- Multiple countries over 28 years.
- Study initially suggested that inflation is affected by both, but there is a degree of difference across countries due to fixed effects, i.e., structural factors.

Leheyda (2005) applied a cointegration and ECM method to find the determinants in Ukraine.
- In the long-run, it found money supply, purchasing power parity and interest rate as major factors.
- In the short-run it found wages, exchange rate and real output as factors.
# Data, Variables and Methodology
- Annual time-series data has been utilised.
The model is:
$$
\Delta \pi_{t}=\delta_{1}\pi_{t-1}+\delta m_{t-1}+\delta_{3}x_{t-1}+\delta_{4}RGDP_{t-1}+\delta_{5}GR_{t-1}+\delta_{6}(\text{liberalisation period})+e_{t}
$$

First, a unit root test was conducted on each variable to figure out the order of integration.

Then they conducted a bounds test for cointegration, which apparently allows a mixture of $I(1)$ and $I(0)$ variables.
- A cointegrated relationship between the variables is found.

The following results were found:
![[Pasted image 20241112172303.png]]

The cumulative sum (CUSUM) and cumulative sum squared (CUSUMSQ) tests also show that the error correction term is stable.
- Not exactly sure how.