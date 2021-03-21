puts "Введите строку чисел через пробел:"
str = STDIN.gets.chomp
puts "Максимальный элемент: #{str.split.map { |i| Integer(i)}.max}"