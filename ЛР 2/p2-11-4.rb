puts "Введите входную строку:"
str = STDIN.gets.chomp.strip
puts str.scan(/-?\d+(?:\.\d+)?/).map{|e| e.to_f}.find_all{|e| e < 5}.size