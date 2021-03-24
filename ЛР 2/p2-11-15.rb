puts "Введите входную строку:"
str = STDIN.gets.chomp.strip
puts str.scan(/\d/).select{ |i| i.to_i > 5 }.size