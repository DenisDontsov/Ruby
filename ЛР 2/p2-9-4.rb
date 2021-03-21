puts "Введите строку:"
str = STDIN.gets.chomp
if str == str.reverse
    puts "Является палиндромом."
else
    puts "Не является палиндромом." 
end