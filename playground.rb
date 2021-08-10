users = [
    {username: "mashrur", password: "password1"},
    {username: "tony", password: "password2"},
    {username: "chrystal", password: "password3"},
    {username: "blu", password: "password4"},
    {username: "rosie", password: "password5"}
]

def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password 
            return user_record
        end
    end
    "Credentials are not correct"
end

puts
puts "Welcome to the authenticator"
25.times {print "-"}
puts 
puts "This program will take input from the  user and compare passwords"
puts "if the pass is correct you will get back the user objects"



attempts = 1
while  attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    authentication = auth_user(username, password, users)
    puts authentication
    puts "Press n to quit or any other key to continue: "
    input = gets.chomp.downcase
    break if input == 'n'
    attempts += 1
end

puts "You have have used all of your attempts" if attempts == 4