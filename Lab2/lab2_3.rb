decimal = "1111100011001"
result =0
decimal.to_s
(0..decimal.length-1).each do |i|
  result+=(2**i)*decimal.chars[decimal.length-1-i].to_i
end
print("Result= ",result)
