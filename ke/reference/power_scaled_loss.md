# Traditional squared loss function scaled by a power

Traditional squared loss function scaled by a power

## Usage

``` r
power_scaled_loss(x, x0, p = 1, k = 1, gradient = FALSE)
```

## Arguments

- x:

  current values

- x0:

  target values

- p:

  numeric power to raise the values to, usually 1 or less

- k:

  force constant

- gradient:

  a logical value indicating whether to calculate the derivative

## Value

\$\$ k \left ( ( ( \|x\| + 1 )^p - 1 ) \operatorname{sgn}(x) - ( (
\|x_0\| + 1 )^p - 1 ) \operatorname{sgn}(x_0) \right )^2 \$\$

## Examples

``` r
x <- seq(-10, 10, by=0.1)
loss_x <- sapply(x, power_scaled_loss, 2, 0.25)
loss_x_grad <- power_scaled_loss(x, 2, 0.25, gradient=TRUE)
par(mfrow=c(2, 1))
plot(x, loss_x, type="l", ylab="loss")
plot(x, attr(loss_x_grad, "gradient"), type="l", ylab="dloss/dx")
points(x[-1]-mean(diff(x))/2, diff(loss_x)/mean(diff(x)), type="l", col="blue")
abline(h = 0, col="gray")
legend("bottomright",
  legend=c("Analytical", "Finite Difference"),
  bty="n", lwd=1, col=c("black", "blue"))

```
