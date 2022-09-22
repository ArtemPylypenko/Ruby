print("Enter x  ")
x = gets.chop().to_f

if x >= -4 && x <= 0
  print(((x - 2).abs / (x ** 2 * Math.cos(x)))**(1.0 / 7))
elsif x > 0 && x <= 12
  print(1 / (Math.tan(x + 1 / Math.exp(x)) / (Math.sin(x) ** 2)) ** (2.0/7))
elsif x < -4 || x > 12
  print(1 / (1 + (x / (1 + (x / (1 + x))))))
end
print("\n")
case x
when -4..0
  print(((x - 2).abs / (x ** 2 * Math.cos(x)))**(1.0 / 7))
when 1..12
  print(1 / (Math.tan(x + 1 / Math.exp(x)) / (Math.sin(x) ** 2)) ** (2.0/7))
else
  print(1 / (1 + (x / (1 + (x / (1 + x))))))
end