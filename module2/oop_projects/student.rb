class Student
    attr_accessor :first_name, :last_name, :email, :username, :password
    #attr_reader 
    #attr_writer 
    def initialize(firstname, lastname, username, email, password)
      @first_name = firstname
      @last_name = lastname
      @username = username
      @email = email
      @password = password
    end
    def to_s
        return "First name #{@first_name}, last name #{@last_name}, email #{@email}, username #{@username}, password #{@password}"
    end
end

sasha = Student.new("Sasha","Stasiuk","AlexStasiuk","stasiuk@example.com","11111")
oleg = Student.new("Oleg","Levchenko","","","")
puts sasha
puts oleg