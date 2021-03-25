puts "Привет, какой твой любимый язык программирования?"
favourite_language = STDIN.gets.chomp()

if favourite_language == "Ruby"
    puts "Пользователь есть подлиза"    
elsif favourite_language == "Assembler"
    puts "Вот точно будет Ruby"
else
    puts "Cкоро будет ruby"
end

puts "Cкоро будет ruby" if favourite_language == "C++"

unless favourite_language != "Ruby"
    puts "Пользователь есть подлиза"    
elsif favourite_language == "Assembler"
    puts "Вот точно будет Ruby"
else
    puts "Cкоро будет ruby"
end

case favourite_language
when "Ruby"
    puts "Пользователь есть подлиза"
when "Python"
    puts "Cкоро точно будет ruby"
else
    puts "Правда?"
end