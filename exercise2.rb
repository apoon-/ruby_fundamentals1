#Problem 1 - $55 Tip

puts "What constitutes a good tip percentage?"
tip_percent = gets.chomp

puts "What is the pre-tip bill?"
price = gets.chomp

price = price.to_f

tip_percent = tip_percent.to_f

tip = 1+(tip_percent/100)

total = tip * price

total = total.round(2)

puts "Your total plus tip of #{tip_percent}% equals #{total}"

#Problem 2 - String & Interger

puts "Enter a String"
string = gets.chomp

puts "Enter a Interger"
int = gets.chomp.to_s

result = string + int

puts result

#Problem 3 - String Interpolation

math = 45628 * 7839

puts "45628 times 7839 equals #{math}"

#Problem 4 - Boolean

result = (true && false) || (false && true) || !(false && false)

puts "The answer to the Boolean is #{result}"
