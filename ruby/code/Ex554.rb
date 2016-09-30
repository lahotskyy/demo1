#require ""

puts 'Put the integer number n.'
puts 'Find all Pythagorean triples of natural numbers,'
puts 'each of which does not exceed n,'
puts 'that is all three positive integers a, b, c,'
puts 'where a**2 + b**2 = c**2 (a <= b <= c <= n).'

def pyth_print(pyth_arr)
  count = pyth_arr.length / 3
  puts "The Pythagoras numbers are:"
  (1..count).each do | i |
  	puts "a = #{pythf_arr[3*i-3]}, b = #{pyth_arr[3*i-2]}, c = #{pyth_arr[3*i-1]}"
  end
  puts "Count of Pythagoras numbers are: #{count}."
end

def pyth_not_exist
  puts "The Pythagoras numbers don\'t exist."
end

def Pythagoras_number()
	n = gets.chomp.to_i
  pyth_exist = false
	pyth_arr = []
  (1..n).each do | c |
     (1..c).each do | b |
      (1..b).each do | a |
      	if a**2 + b**2 == c**2
          pyth_arr.push(a, b, c)
          pyth_exist = true
      	end
      end
  	end
  end
  pyth_exist ? pyth_print(pyth_arr) : pyth_not_exist
end

Pythagoras_number()
