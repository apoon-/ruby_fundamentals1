# Exercise: Maximum

# def maximum(arr)
#   arr.max
# end

# puts maximum([2, 42, 22, 02])
# puts maximum([-2, 0, 33, 304, 2, -2])
# puts maximum([1])

# Exercise: subtracting out the sugar

# puts 2.+(2)
# puts 40.+(2)

# Exercise: Your Favorite And Mine, Fibonacci

# def fibo_finder(n)
#   start_array = [0,1]
#   n.times do |i|
#     sum = start_array[-1] + start_array[-2]
#     start_array << sum
#   end
#   start_array[n]
# end

# puts fibo_finder(0)
# puts fibo_finder(1)
# puts fibo_finder(4)
# puts fibo_finder(7)
# puts fibo_finder(10)

# Exercise: Happy numbers

# def happy?(n)
#   if n == 1 # Base case
#     return true
#   else
    
#     digit_squared_sum = n.to_s.split("").inject(0) { |sum, c| sum + c.to_i**2 }
#     if happy?(digit_squared_sum)
#       true
#     else
#       false
#     end
#   end
# end

# puts happy?(1)
# puts happy?(986543210)
# puts happy?(2)
# puts happy?(189)

# Exercise: prime factors

# def prime_factors(n)
#   return [] if n == 1
#   factor = (2..n).find {|x| n % x == 0} 
#   [factor] + prime_factors(n / factor) 
# end

# p prime_factors(102)
# p prime_factors(896680)
# p prime_factors(42)






