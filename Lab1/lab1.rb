print "Enter x (not n*(pi/2) && x != 0 ): "
x = gets.chomp.to_s.to_f
puts(x)

print "Enter a: "
a = gets.chomp.to_s.to_f
puts(a)

print "Enter b (not n*pi && b != 0 ): "
b = gets.chomp.to_s.to_f
puts(b)

print "Enter : phi (phi < a)"
phi = gets.chomp.to_s.to_f
puts(phi)

F = (x**4) * Math.sqrt(phi-a) + (Math.log(Math.sin(b.abs))**3 + Math.tan(x)**(1/3))/(2.3*Math.log10(x.abs));
print("F= ",F)
