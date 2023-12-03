E(x): Expected value
Var(x): Variance

$$
E(x) = \int_{-\infty}^{\infty} xf(x) \, dx
$$
$$
Var(x) = E(x^2)-(E(x))^2
$$

# Example Problem
We have a probability density function, f(x) which has value when 0<x<root(2). Outside of this range it is equal to 0.
$$
f(x) \Biggl\{_{0 \space{otherwise}}^{x, \space{0<x<\surd{2}}}
$$
$$
E(x) = \int_{-\infty}^{\infty} xf(x) \, dx =\int_{-\infty}^{0} 0\, dx + \int_{0}^{\surd{2}} x*x\, dx + \int_{\surd{2}}^{\infty} 0\, dx
$$
As we can see, the only notable integral to solve here is the middle one, as the other two are equal to 0.
$$
E(x) =\int_{0}^{\surd2}x^2 \,dx = \biggl[ {\frac{1}{3}x^3} \biggl]_{0}^{\surd2} = \frac{\surd8}{3} \approx 0.94
$$
To work out the variance, we must first work out E(x^2), since we now already know E(x).
$$
E(x^2) = \int^{\infty}_{-\infty} x^2f(x) \, dx = \int^{0}_{-\infty}0\,dx + \int^{\surd2}_{0} x^2*x\,dx + \int^{\infty}_{\surd2} 0\,dx
$$
Again, solving only the middle integral we are left with:
$$
E(x^2) = \int_{0}^{\surd2}x^3\,dx = \biggl[ {\frac{1}{4}x^4} \biggl]_{0}^{\surd2} = \frac{4}{4} = 1
$$
So, the variance is:
$$
Var(x) = 1-0.94^2 = 0.1164
$$
