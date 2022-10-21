def evaluate_sum(func, x, i = 0, n = 0, eps = 0.001)
  sum = 0
  if n != 0
    (i..n).each do |num|
      sum += func.call(x, num)
    end
  else
    prev_sum = -1
    while (sum - prev_sum).abs > eps
      prev_sum = sum
      sum += func.call(x, i)
      i += 1
    end
  end

  sum
end

func = lambda { |x, i|
  ((-1) ** i)*(x**(2*i))/(fact(2*i))
}

def fact(n)
  if n == 0
    1
  else
    if n > 0
      n * fact(n - 1)

    else
      puts "no factorial for -ve number"
    end
  end
end

x = 0.3
n = 58

puts "Infinity sum : #{evaluate_sum(func, x)}"
puts "Sum to n = #{n} : #{evaluate_sum(func, x, 0, n)}"
