$$
P[y=1]=F(\beta_{1}+\beta_{2}X)
$$
>In the Linear Probability Model, **we assume F is a linear function.**

![[Pasted image 20241112123813.png]]
- While $y$ can only be 0 or 1, we can see that the probability of being 0 or 1 in this case is increasing with $X$, with slope $\beta_{2}$.

We can break this down:
$$
y=E(y|X)+e
$$
- Where $e$ is an error term.
We know that $E(y|X)=P[y=1|X]=F(\beta_{1}+\beta_{2}X)$
And, since F is a linear function, we can rewrite and simplify as:
$$
y=\beta_{1}+\beta_{2}X+e
$$
# Limitations
The biggest, clearest limitation is that the error term, $e$, is extremely heteroscedastic. As the probability function increases with $X$, the error term will always not follow a normal distribution, instead being delimited by the upper and lower bounds (0 and 1).

Second, the linear model could give probabilities less than 0 and greater than 1. This is because $\beta_{2}$ is a constant marginal effect, so, assuming $\beta_{2}>0$, if $X$ is large enough then $P[y=1]$ could be greater than 1.