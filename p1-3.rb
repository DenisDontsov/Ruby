puts "Привет, #{ARGV[0]} есть любимый язык программирования?"
favourite_language = STDIN.gets.chomp()

if favourite_language == "Ruby" then
    puts "Пользователь есть подлиза"
else
    puts "Cкоро будет ruby"
end

puts "Cкоро будет ruby" if favourite_language == "C++"

case favourite_language
when "Ruby"
    puts "Пользователь есть подлиза"
when "Python"
    puts "Cкоро точно будет ruby"
else
    puts "Правда?"
end