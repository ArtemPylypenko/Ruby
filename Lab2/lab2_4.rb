a = 332
result=""
while a > 0 do

  if (a%2 == 1 )
    a=(a/2).to_i
    result+="1"
    next
  end
  if (a%2 == 0 )
    a=(a/2).to_i
    result+="0"
    next
  end
end
result= result.reverse
print(result)
