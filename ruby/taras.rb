print 'There\'s 3 available tasks: 86a, 86b and 554. Choose one: '
choice = gets.chomp

case choice
when '86a'
  require "./code/Ex86a"
when '86b'
  require_relative "code/Ex86b"
when '554'
  require_relative "code/Ex554"
else
  puts "Ex. #{choice} is absent  \n Good bye!"
end
