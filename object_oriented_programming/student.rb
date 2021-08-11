class Student 
    attr_accessor :first_name, :last_name, :email, :username, :password

    def initialize(first_name, lastname, username, email, password)
        @first_name = first_name
        @last_name = lastname
        @username = username
        @email = email
        @password = password
    end

    def to_s
        "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email: #{@email}, Password: #{@password}"
    end


end

mashrur = Student.new("Mashrur", "Hossain", "mashrur1", "email@email.com", "password1")
tony = Student.new("Tony", "Herrera", "Tony36", "tony@email.com", "password55")

puts tony
puts mashrur


