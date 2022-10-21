

def rectangle_method(func, a, b, n, step = (b - a) / n.to_f)
  sum = 0.0
  x = a + step / 2
  while x < b
    sum += func.call(x)
    x += step
  end
  sum * step
end

def trapezoid_method(func, a, b, n, step = (b - a) / n.to_f)
  sum = func.call(a) / 2 + func.call(b) / 2
  x = a + step
  while x <= b - step
    sum += func.call(x)
    x += step
  end
  sum * step
end

f1 = lambda { |x|
  (x**3)*(Math.exp(2*x))
}

f2 = lambda { |x|
  Math.tan((5/x)+Math::PI/4)**(5/2)
}
n = 2000

a1 = 0.0
b1 = 0.8

a2 = 0.0
b2 =Math::PI/8

puts "Rectangle method for f1 : #{rectangle_method(f1, a1, b1, n)}"
puts "Trapezoid method for f1 : #{trapezoid_method(f1, a1, b1, n)}"
puts "Rectangle method for f2 : #{rectangle_method(f2, a2, b2, n)}"
puts "Trapezoid method for f2 : #{trapezoid_method(f2, a2, b2, n)}"