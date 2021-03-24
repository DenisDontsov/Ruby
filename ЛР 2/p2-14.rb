# Чтение содержимого файла
def readFromFile(filePath)
	if not File.file?(filePath)
		return nil
	end
    file = File.new(filePath, "r:UTF-8")
    return file.readlines
end

lines = readFromFile(ARGV[0])
puts lines.sort_by {|line| line.split.select {|w1, w2| not w1.scan(/\d+/).empty?}.count}