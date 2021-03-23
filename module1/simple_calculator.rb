puts "Simple calculator"
20.times { print "-" }
puts
puts "Please enter your first number"
first_number = gets.chomp.to_f
puts "Please enter your second number"
second_number = gets.chomp.to_f
puts "#{first_number} + #{second_number} = #{first_number + second_number}"
puts "#{first_number} * #{second_number} = #{first_number * second_number}"
puts "#{first_number} / #{second_number} = #{first_number / second_number}"
puts "#{first_number} - #{second_number} = #{first_number - second_number}"
puts "#{first_number} % #{second_number} = #{first_number % second_number}"