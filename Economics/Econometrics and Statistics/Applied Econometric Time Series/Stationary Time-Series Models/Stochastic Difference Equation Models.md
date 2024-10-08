>For a discrete variable $y$, it is random if, for some real number $r$, there exists a probability that $y$ will take on a value less than $r$. This is a general definition, and typically we define it more concretely as: $0<p(y=r)<1$. If there exists some $r$ where $p(y=r)=1$, $y$ is deterministic.
# Expectation Operator
The expectation operator, $E_{t}$, acts on a forecast $y_{t+1}$.
$$
E_{t}y_{t+1}=E_{t}[y_{t+1}|y_{t},y_{t-1},\dots,y_{1}]
$$
- Essentially, when we forecast we are expecting something given our previous observations.
# White Noise
A sequence $\{{\epsilon_{t}}\}$ is a white-noise process if each value has:
1. Mean of zero, $E(\epsilon_{t})=E(\epsilon_{t-1})=0$
2. Constant variance, $Var(\epsilon_{t})=Var(\epsilon_{t-1})=\sigma^{2}$
3. Is not correlated with all other realisations, $Cov(\epsilon_{t},\epsilon_{t-1})=Cov(\epsilon_{t-j},\epsilon_{t-j-s})=0$
