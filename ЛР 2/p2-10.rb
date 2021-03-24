# Чтение файла
def readFromFile(filePath)
	if not File.file?(filePath)
		return nil
	end
    file = File.new(filePath, "r:UTF-8")
    lines = file.readlines
	return lines.join(" ")
end

print "Введите путь к файлу с исходным текстом: "
filePath = STDIN.gets.chomp.strip
text = readFromFile(filePath)
if text == nil
    puts "Файл пуст, либо не найден."
else
    puts text.scan(/\s?+(\d\d?\s+(?:декабря|января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октября|ноября)\s+\d{1,4})/ixu)
end