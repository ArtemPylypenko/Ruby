A = [2,9,7,14,11,32,6,7,8,10,13,21,25]
C = [1,7,78,14,9,13,21,44,6,32,25,10,13,87]
B= Array.new

for x in A do
  for y in C do
    if(x==y)
      B.append(x)
    end
  end
end
print(B)
