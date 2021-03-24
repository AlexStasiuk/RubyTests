require 'bcrypt'
 
users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]
 
def create_hash_digest(password)
  BCrypt::Password.create(password)
end
 
def verify_hash_digest(password)
  BCrypt::Password.new(password)
end
 
def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
end

def auth_user(user_name, password, list_of_users)
    list_of_users.each do |user|
        if user[:username] == user_name && verify_hash_digest(user[:password]) == password
          return user
        end
    end
    return "There is no such user in"
end

users = create_secure_users(users)

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
if !validationState
    puts "Attemps is over"
end