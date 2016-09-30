require "./code/Ex86a"
require_relative "code/Ex86b"
require_relative "code/Ex554"

print 'There\'s 3 available tasks: 86a, 86b and 554. Choose one: '
choice = gets.chomp

case choice
when '86a'
  Ex86a.start
when '86b'
  Ex86b.start
when '544'
  Ex554.pifagors_number
else
  puts "Ex. #{choice} is absent  \n Good bye!"
end
