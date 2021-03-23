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
    "lancaster" => "717"
}
def get_cities(city_hash)
    return city_hash.keys
end

def get_area_code(city_hash, city_name)
    return city_hash[city_name]
end

loop do
    puts "Do you want to display cities(Y/N)"
    choice = gets.chomp
    if choice.capitalize != "Y"
        break
    else
        puts get_cities(dial_book)
    end
    puts "Do you want to display city code(Y/N)"
    choice = gets.chomp
    if choice.capitalize != "Y"
        break
    else
        puts "Enter the city to view the code"
        city = gets.chomp
        city_code = get_area_code(dial_book,city)
        if !city_code.nil?
            puts city_code
        else
            puts "There is not such city in dictionary"
        end
    end
end