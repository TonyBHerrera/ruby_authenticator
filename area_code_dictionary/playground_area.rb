dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717",
}

# Get city names form the hash

def get_city_names(some_hash)
    some_hash.keys 
end

# Get area code based on given hash and key

def get_area_code(some_hash, key)
    some_hash[key]
end

# execution flow

loop do 
 puts "Do you want to look up an area code based on a city name?(Y/N)"
 answer = gets.chomp.downcase
 break if answer != "y"
 puts "What city do you want the area code for?"
 puts get_city_names(dial_book)
 puts "Enter your selection"
 answer_city = gets.chomp.downcase
 if dial_book.include?(answer_city)
    puts "The area code for #{answer_city} is #{get_area_code(dial_book, answer_city)}"
 else 
    puts "you entered an invalid city"
 end
 
end

