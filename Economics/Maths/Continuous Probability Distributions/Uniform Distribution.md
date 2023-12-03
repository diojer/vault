x~U(a, b): x is uniformly distributed between a and b.

This means that the [[Probability Density Function]] of X is a straight horizontal line. 
Therefore it is always, f(X) = 1/(b-a) *(where b is greater than a)*.

The [[Probability Distribution Function]], F(X), of X between a and b is F(X) = (x-a)/(b-a).
F(X) = 1 when x > b.
F(X) = 0 when x < a.

# Expected Value
E(X) = $\frac{a+b}{2}$
### Example scenario
x~U(0,10)
Calculate the probability x>6.
![[Pasted image 20230221081951.png]]

We can work out the blue area, by integrating the probability density function between 6 and 10.

Or, we can work out the yellow area, by utilising the probability distribution function rules which we know for uniform distributions; then subtract that from 1.

I think the second method is easier.

The yellow area represents *prob(x<6)*. So, F(6) = (6-0)/(10-0) = 6/10. ([[Economics/Maths/Formula Sheet#In Uniform Distribution uniform distributions :|formula]])
1-(6/10) = 4/10.
Our answer is 4/10.