require 'code/Ex86a.rb'
require 'code/Ex86b.rb'
require 'code/Ex554.rb'

print 'There\'s 3 available tasks: 86a, 86b and 544. Choose one: '
choice = gets.chomp

case choice
when '86a'
  Ex86a.start
when '86b'
  Ex86b.start
when '544'
  Ex544.start
else
  puts "Ex. #{choice} is absent  \n Good bye!"
end
