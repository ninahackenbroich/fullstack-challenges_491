require_relative "coach_answer"

answer = nil
puts ">>"
while answer != ""
  puts ">>"
  user_message = gets.chomp
  coach_answer(user_message)
  answer
end

puts "OK, bye!"

# TODO: Implement the program that makes you discuss with your coach from the terminal.
