#require ""

puts 'Put the integer number n.'
puts 'a) How many digits in the number.'

def digits(n)
  count = n.to_s.size
	puts "The number have #{count} digits."
end

n = gets.chomp
digits(n)
require "../taras.rb"
