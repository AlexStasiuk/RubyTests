def plus(first_number,second_number)
    first_number.to_f + second_number.to_f
end

def substract(first_number,second_number)
    first_number.to_f - second_number.to_f
end

def multiplay(first_number,second_number)
    first_number.to_f * second_number.to_f
end

def divide(first_number,second_number)
    first_number.to_f / second_number.to_f
end

def mod(first_number,second_number)
    first_number.to_f % second_number.to_f
end

puts "Simple calculator"
20.times { print "-" }
puts
puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
puts "Please enter 
    1 if you want to multiplay,
    2 if you want to divide,
    3 if you want to plus,
    4 if you want to substract,
    5 if you want to mod"
puts
user_entry = gets.chomp.to_i
if user_entry == 1
    puts "Result #{multiplay(first_number,second_number)}"
elsif user_entry == 2
    puts "Result #{divide(first_number,second_number)}"
elsif user_entry == 3
    puts "Result #{plus(first_number,second_number)}"
elsif user_entry == 4
    puts "Result #{substract(first_number,second_number)}"
elsif user_entry == 5
    puts "Result #{mod(first_number,second_number)}"
else
    puts "Invalid input"
end