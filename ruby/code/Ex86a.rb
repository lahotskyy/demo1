#require ""

puts 'Put the integer number n.'
puts 'a) How many digits in the number.'

def digits(n)
  count = n.to_s.size
	puts "Number have #{count} digits."
end

n = gets.chomp
digits(n)
