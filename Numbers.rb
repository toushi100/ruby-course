x = 1
puts x.to_s(2)
puts x.even?
puts x.odd?
x-=2
puts x
x=x.to_f/2
puts x
x = x+(1+(Rational("1/4")))
puts x
puts x.to_r
puts x.numerator
puts x.denominator
x = x * Rational("1/3")
x+=0.000001
puts x
puts x =x.round(3)
y = String(x)
p y
p z = y.to_i 
p t = z.to_f