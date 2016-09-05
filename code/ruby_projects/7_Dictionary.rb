dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "boston" => "617",
    "statecollege" => "814",
    "philadelphia" => "267",
    "providence" => "401",
    "seattle" => "206",
    "lowell" => "978",
    "worcester" => "508",
    "framingham" => "778"
}

def get_city_name(somehash)
    somehash.each{|k,v| puts k}
end

def get_area_code(somehash,key)
    somehash[key]    
end

loop do
    puts "Do you want to lookup a city's area code? Y/N"
    
    answer = gets.chomp
    if answer != "Y"
        break
    end
   
    puts "Here are all the cities you can choose from:"
    dial_book.each { |city,code| puts city }
    
    answerCity = gets.chomp
    
    if dial_book.include?(answerCity)
        puts "the code for #{answerCity} is #{get_area_code(dial_book, answerCity)}"
    else
        puts "you entered a city not in the dictionary or an invalid entry"
    end
end

    
    
    
