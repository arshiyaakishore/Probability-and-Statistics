#Q1
library(pracma)
#i
f1=function(x,y)
{
  2*(2*x+3*y)/5
}
ans1=integral2(f1,0,1,0,1)
ans1$Q

#ii
#x=1 so f1(1,y) marginal so inetgrate
f2=function(y){
  f1(1,y)
}

ans2=integral(f2,0,1)
ans2

#iii
f3=function(x)
{
  f1(x,0)
}

ans3=integral(f3,0,1)
ans3

#iv


#Q2 discrete

fun2=function(x,y)
{
  (x+y)/30
}

#i
mat1=matrix(c(fun2(0,0:2), fun2(1,0:2), fun2(2,0:2), fun2(3,0:2)),4,3,byrow=T)
mat1
#ii sum is 1
sum(mat1)


#iii for x
p=apply(mat1, 1, sum)

#iv for y
z=apply(mat1, 2, sum)
z


#v
mat1[1,2]/z[2]

#vi
# Expected value of X
E_x <- sum(g * seq(0, 3))

# Expected value of Y
E_y <- sum(h * seq(0, 2))

# Expected value of XY
E_xy <- sum(joint_pmf * outer(seq(0, 3), seq(0, 2)))

# Variance of X
Var_x <- sum((seq(0, 3) - E_x)^2 * g)

# Variance of Y
Var_y <- sum((seq(0, 2) - E_y)^2 * h)

# Covariance of X and Y
Cov_xy <- E_xy - E_x * E_y

# Correlation coefficient of X and Y
correlation_coef <- Cov_xy / sqrt(Var_x * Var_y)

# Display the results
print(list(E_x = E_x, E_y = E_y, E_xy = E_xy, Var_x = Var_x, Var_y = Var_y, Cov_xy = Cov_xy, correlation_coef = correlation_coef))



