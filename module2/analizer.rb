# puts "What is your first name?"
# first_name = gets.chomp
# puts "Thank you, you said your name is #{first_name}";

# puts "Input number to multiplay by 2"
# number = gets.chomp.to_i
# puts number * 2

puts "Enter your first name?"
first_name = gets.chomp
puts "Enter your last name?"
last_name = gets.chomp
fullName = first_name + " " + last_name
puts "Your full name is #{fullName} "
puts "Your full name reversed is #{fullName.reverse}"
puts "Your name has #{fullName.length - 1} characters in it"
