# Чтение содержимого файла
def readFromFile(filePath)
	if not File.file?(filePath) # Проверка существования файла
		return nil
	end
    file = File.new(filePath, "r:UTF-8")
    lines = file.readlines
	return lines.join(" ")
end
# 10
def findDates(str)
	return str.scan(/\s+(\d\d?\s+(?:декабря|января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октября|ноября)\s+\d{1,4})/ixu)  
end
# 11-4
def count_number_less5(str)
	return str.scan(/-?\d+(?:\.\d+)?/).map{|e| e.to_f}.find_all{|e| e<5}.size
end
# 11-11
def count_not_used_latin(str)
	return str.scan(/[A-z]/).size
end
# 11-15
def count_digits_more5(str)
	return str.scan(/\d/).select{ |i| i.to_i > 5 }.size
end
def main
	puts "Введите номер задачи:
	1. Нахождение дат в виде '31 февраля 2007';
	2. Нахождение количества чисел в строке, значение которых меньше 5;
	3. Нахождение всех незадействованных символов латиницы в строке;
	4. Нахождение количества цифр в строке, значение которых больше 5."
	answer = STDIN.gets.chomp.strip
	case answer
	when "1"
		print "Введите путь к файлу с исходным текстом:"
		filePath = STDIN.gets.chomp.strip
		text = readFromFile(filePath)
		if text == nil
			puts "Файл пуст, либо не найден."
		else
			puts findDates(text)
		end
	when "2"
		print "Введите путь к файлу с исходным текстом:"
		filePath = STDIN.gets.chomp.strip
		text = readFromFile(filePath)
		puts count_number_less5(text).to_s
	when "3"
		puts "Введите входную строку:"
		str = STDIN.gets.chomp.strip
		puts count_not_used_latin(str)
	when "4"
		puts "Введите входную строку:"
		str = STDIN.gets.chomp.strip
		puts count_digits_more5(str)
	else
		puts "Неверный ввод."
	end
end
main