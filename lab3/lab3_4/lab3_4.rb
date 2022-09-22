def factorial(n)
  n > 1 ? n * factorial(n - 1) : 1
end

#Task 1
e = 0.00001
def infSum1(sum,n)
  current = sum + ((factorial(n-1).to_f/factorial(n+1).to_f)).to_f**(n*(n+1))
  next_st = current
  if((current - sum).abs > 0.00001)
    next_st = infSum1(current,n+1)
  end

  return next_st
end
def infSum2(sum,n)
  x=1
  current = sum + (((-1.0)**n)*((x**(2.0*n))/(factorial(2.0*n))))
  next_st = current
  if((current - sum).abs > 0.00001)
    next_st = infSum2(current,n+1)
  end

  return next_st
end

def infSum3(sum,n)
  current = sum + ((factorial(4.0*n-1.0)/((factorial(4.0*n-1.0))*(3.0**(2.0*n))*(factorial(2.0*n)))))
  next_st = current
  if((current - sum).abs > 0.00001)
    next_st = infSum3(current,n+1)
  end

  return next_st
end


print(infSum1(0,2))
print("\n")
print("cos(x)= ",Math.cos(1))
print("\n")
print(infSum2(1,1))
print("\n")
print(infSum3(0,1))

