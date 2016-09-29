#require ""

puts 'Put the integer number n.'
puts 'Find all Pythagorean triples of natural numbers,'
puts 'each of which does not exceed n,'
puts 'that is all three positive integers a, b, c,'
puts 'where a**2 + b**2 = c**2 (a <= b <= c <= n).'

def pif_print(pif_arr)
  count = pif_arr.length / 3
  puts "The Pifagor numbers are:"
  (1..count).each do | i |
  	puts "a = #{pif_arr[3*i-3]}, b = #{pif_arr[3*i-2]}, c = #{pif_arr[3*i-1]}"
  end
  puts "Count of Pifagor numbers are: #{count}."
end

def pif_not_exist
  puts "The Pifagor numbers don\'t exist."
end

def pifagors_number(n)
	pif_exist = false
	pif_arr = []
  (1..n).each do | c |
     (1..c).each do | b |
      (1..b).each do | a |
      	if a**2 + b**2 == c**2
          pif_arr.push(a, b, c)
          pif_exist = true
      	end
      end
  	end
  end
  pif_exist ? pif_print(pif_arr) : pif_not_exist
end

n = gets.chomp.to_i
pifagors_number(n)
