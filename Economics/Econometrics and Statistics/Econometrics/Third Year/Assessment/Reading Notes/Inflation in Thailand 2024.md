#study
```table-of-contents
```
# Abstract
Thailand has a heavy reliance on oil imports to meet its energy requirements, and so fluctuations in global oil prices play a pivotal role.

Study uses linear and nonlinear ARDL specifications, analysing monthly timeseries data from January 2005 - June 2023.
- Most product prices respond to changes in global oil prices in an asymmetrical manner.
# Introduction
Fossil fuel use has driven economic and industrial progress but has led to consistent fluctuations in energy prices.
- These shifts are influenced by various factors, including global oil demand and supply imbalances, economic growth, the influence of oil-producing countries on prices, and a range of geopolitical crises.

The discovery of fossil fuels led to progress, including automobiles, electrical energy and heat energy.
- Increases in the price of oil can drive up input prices, production costs and thus lead to inflation.
- Sometimes, governments subsidise oil prices so that this does not happen.

Thailand has a population of roughly 66 million people. It has a moderately sized economy and its GDP is >$500bn. The country has maintained a 1.87% growth rate over the past decade.
- Thailand's tourism industry makes up a large proportion of its economy.
- International trade also makes up a large portion.
	- Exports can be categorised into three main groups:
		- Manufacturing (78.65%)
		- Agricultural + agro-industrial (17.23%)
		- Miscellaneous (4.12%)
	- Imports can be categorised as:
		- Raw materials and intermediaries (41.80%),
		- Capital goods (22.13%),
		- Fuel and lubricants (19.88%),
		- Consumer goods (10.82%),
		- Miscellaneous items (5.37%).

The economic development of Thailand is highly dependent on a supply of energy.
- The nation promotes and supports alternative sources including biodiesel, hydropower, solar energy, wind energy and biomass energy.
As the economy expands, Thailand faces the challenge of significant energy imports from abroad.
- In 2022 energy consumption stood at 1.99 million barrels of oil equivalent per day.
	- 40% oil,
	- 39.59% natural gas,
	- 17.09% coal and lignite,
	- 3.63% from hydropower.
# Literature Review
Focusing mainly on oil prices and inflation:

Long and Liang (2018) examined effects of oil price changes on PPI and CPI inflation in China.

Ibrahim (2015) observed that oil prices affect food prices (in an asymmetrical manner), and Abaidoo and Agyapong (2023) have linked food prices with general inflationary pressures.
# Data and Variables
January 2005 - June 2023
222 months of observations.

![[Pasted image 20241115000047.png]]
- Where:
	- $w$ is the spot oil price - equally weighted average of Brent, Dubai and West Texas Intermediate crude oils.
	- $cp i$ is the consumer price index: 2019=100,
	- $ppi$ is the producer price index: 2015=100,
	- $expi$ is the export price index: 2012=100,
	- $palm$ is the palm oil price,
	- $sug$ is the sugar price,
	- $cas$ is the cassava price,
	- $ds$ is the diesel price,
	- $gsh$ is the gasohol price.
# Methodology
Focus will be on linear ARDL as I am not familiar with non-linear ARDL.

ARDL does not require stationarity when creating a cointegrated model. In cases where a variable exhibits a mixture of $I(0)$ and $I(1)$ time series properties, the ARDL technique can be effectively employed for both long- and short-run analysis.
- However, ARDL cointegration does require that ==the time series of variables should not exhibit stationarity beyond the order of $I(1)$ processes.==
	- Therefore, it is important to test for stationarity.
		- This paper uses the ADF, Phillips-Perron and Kwiatkowski-Phillips-Schmidt-Shin tests.

Specification:
$$
\Delta ly_{t}=\alpha_{0}+\delta T+\sum_{i=1}^{p-1}\beta_{i}\Delta ly_{t-i}+\sum_{i=0}^{q-1}\theta_{i}\Delta lw_{t-i}+\rho ly_{t-1}+\omega lw_{t-1}+\epsilon_{t}
$$
- Where:
	- $ly$ is the dependent variable (there are multiple, including food prices, we are interested in cpi inflation.)
	- $T$ is the time trend,
	- $\beta,\theta,\rho,\omega$ are all parameters of interest.
		- $\beta,\theta$ will be used to estimate short-run effects, $\rho,\omega$ will be used for long-run effects.

ARDL test for cointegration:
- F-test to see whether $\rho,\omega$ are jointly significant.
	- This is assessed using a statistical table provided by Pesaran et al. (2001).
# Results
Oil prices had statistically significant upward effects on inflation in the short- and long-run, and in both the positive and negative directions (analysis of asymmetrical ARDL).
- Long-run effects are asymmetrical, but short-run effects are essentially symmetrical.
	- Long-run:
		- +1% increase in $w\to$ +0.147% $cpi$\*\*\*,
		- -1% increase in $w\to$ -0.115% $cpi$\*\*\*,
	- Short-run: difficult to detect significant effects~
		- +1% $w\to$ +0.018% $cpi$\*\*
		- -1% $w\to$ -0.002% $cpi$ (not statistically significant).
# Policy Recommendations
Thailand is very susceptible to oil price fluctuations.
- A significant *drop* in oil prices can potentially lead to deflation.

1. Tax reduction and management: excise, municipal, value-added taxes should be reduced. Any unnecessary marketing costs on oil and energy should be reduced too. The reduction in government revenue must be prudently managed because fuel subsidies are essential for energy price stability.
2. Subsidise prices for vulnerable groups: households with low incomes, the agricultural sector, and transportation services are heavily reliant on affordable oil and so government support is essential.
3. Diversify energy sources: including, thermal, biofuel, etc. This will stabilise domestic energy prices away from global price fluctuations.