#Task 4
sum = 0
result = 0
n=10
for i in 1..n
  sum += Math.sin(i)
  result += 1.0 / sum;
end
print(result)
print("\n")
#Task 2

sum = 1
for i in 1..8
  sum+= 1.0/(3**i)
end
print(sum)