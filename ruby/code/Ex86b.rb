#require ""

puts 'Put the integer number n.'
puts 'b) How much is the sum of its digits.'

def sum_of_digits(n)
  sum = n.scan(/./).inject(0){|sum, x| sum + x.to_i}
  puts "Sum of digits is #{sum}."
end

n = gets.chomp
sum_of_digits(n)
