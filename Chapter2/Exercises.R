# Problem 19 (really should use Matlab for this)
# Part a
X = runif(100)
Y = runif(1000)

fa <- function(x) {
  return(cos(2*pi*x))
}

X = sapply(X, fa)
Z = sum(X) / 100

Y = sapply(Y, fa)
Yf = sum(Y)/ 1000

print(Yf - Z)

#Part b
X = runif(100)
Y = runif(1000)

fb <- function(x) {
  return(cos(2*pi*x^2))
}

X = sapply(X, fa)
Z = sum(X) / 100

Y = sapply(Y, fa)
Yf = sum(Y)/ 1000

print(Yf)
print(Z)

# Problem 30
# Part a
U = runif(1000)
Sn = vector(length = 1000)
x = seq(1, 1000)
for (i in 1:1000) {
  Sn[i] = sum(U[1:i])
}
# plot(x, Sn)

#Part b
An = Sn / x
# plot(x, An)

#Part c
Cn = Sn - x / 2
# plot(x, Cn)

#Part d
Dn = Cn / x
# plot(x, Dn)

#Part e
y = sapply(x, sqrt)
En = Cn / y
plot(x, En)

