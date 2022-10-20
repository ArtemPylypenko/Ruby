# Task1
print("enter a, b, c(not 0), xStart, xEnd\n")

def function(x, a, b, c)
  res = 0;
  if x > 5 && c == 0
    return (x.to_f - a.to_f) / x.to_f
  end
  if x < 5 && c != 0
    return (-1 * a * x * x) - b
  end
  return -1.0 * x.to_f / c.to_f
end

dx = 0.1

a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f

xStart = gets.chomp.to_f
xEnd = gets.chomp.to_f



for i in (xStart..xEnd).step(dx)
  print i, " ", function(i, a, b, c), "\n"
end
print "end"