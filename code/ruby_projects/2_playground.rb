# This is a single line comment.

=begin
This is a multiline comment and con spwan as many lines as you
like. But =begin and =end should come in the first line only. 
=end

=begin
puts "Ankit"
puts "Jariwala"

puts "Concat" + "nation"

puts "Ankit" +" "+ "Jariwala"
=end

puts " Hello, please enter your first name:"
first_name = gets.chomp

puts "and now your last name please:"
last_name = gets.chomp

puts "Welcome #{first_name} #{last_name}, to the playground"