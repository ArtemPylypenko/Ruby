$N = 5

def evaluate_y(x, c, n)
  y=((((((c**(3.0/2.0))+27*x**(3.0/5.0))/(Math.sqrt(c)+3*x**(1.0/5.0))))+(3*(32*x**2)**(1.0/10.0)))*(x**(-2.0)))+ ((1.0+(x**(1/c)+ x**2)/(n-x +7/3)))
  return y
end

def evaluate_z(x,c,n)
  z=((1-Math.cos(4*x))/((Math.cos(2*x)**(-2))-1)+((1+Math.cos(4*x))/((Math.sin(2*x)**(-2))-1))+((Math.tan(2*3.1415/9 - x)**(c/n))))
    return z

end

def first_task(n, c)
  dx = (n - 1.0) / (n + c)
  x = 1

  for i in 1..(n + c)
    puts "dx = #{dx}"
    puts "x = #{x}, y(x) = #{evaluate_y(x, c, n)}"
    x += dx
  end
end

def second_task(n, c)
  dx = (Math::PI - Math::PI / n) / (1.5 * n + c)
  x = Math::PI - Math::PI / n

  while x < Math::PI
    puts "x = #{x}, z(x) = #{evaluate_z(x,c,n)}"
    x += dx
  end
end

def third_task(n, c)
  dx = (c - 2.0) / (2 * n)
  x = 2.0

  while x < c
    if x > 2 && x < n
      puts "x = #{x}, f(x) = #{evaluate_y(x, c, n)}"
    elsif  x > n && x < 2 * n
      puts "x = #{x}, f(x) = #{evaluate_z(x,c,n)}"
    else
      puts "x = #{x}, f(x) = #{evaluate_y(x, c, n) + evaluate_z(x,c,n)}"
    end

    x += dx
  end
end

c = 5

puts "-------------------------------------First-------------------------------------"
first_task($N, c)

puts "-------------------------------------Second-------------------------------------"
second_task($N, c)

puts "-------------------------------------Third-------------------------------------"
third_task($N, c)
