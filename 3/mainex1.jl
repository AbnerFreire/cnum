f1(x) = sqrt(x) - cos(x)
f2(x) = 5*sin(x^2) - MathConstants.e^(x/10)


error = 10^-5

function bisection(a,b,f)
  x = (a+b)/2
  while abs(f(x)) > error
    if f(a)*f(x) > 0
      a = x
    else
      b = x
    end
    x = (a+b)/2
  end
  return x
end    

r = bisection(0,1,f1)
println(r)

r = bisection(0.4,0.5,f2)
println(r)
r = bisection(1.7,1.8,f2)
println(r)
r = bisection(2.5,2.6,f2)
println(r)

