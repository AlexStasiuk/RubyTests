def auth_user(user_name, password, allUsers)
    allUsers.each do |user|
        if user[:user_name] == user_name && user[:password] == password
            return user
        end
    end
    return "There is not such a user"
end

users = [
    {user_name: "Sasha", password: "password1"},
    {user_name: "Ivan", password: "password2"},
    {user_name: "Dima", password: "password3"},
    {user_name: "Stas", password: "password4"},
    {user_name: "Vika", password: "password5"}
]

puts "Simple authentication program"
25.times do 
    print "-"
end
puts

validationState = false
3.times do
    puts "Input name"
    user_name = gets.chomp
    puts "Input password"
    password = gets.chomp
    user = auth_user(user_name, password, users)
    if !user.is_a?(String)
        puts "Congratulations #{user_name} you are in"
        validationState = true
        break
    end
end
if validationState == false
    puts "Attemps is over"
end

