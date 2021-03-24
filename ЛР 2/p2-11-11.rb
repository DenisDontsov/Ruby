puts "Введите входную строку:"
str = STDIN.gets.chomp.strip
m = str.scan(/[a-zA-Z]/)
b = ("a".."z").to_a + ("A".."Z").to_a
puts m - b