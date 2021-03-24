# Чтение содержимого файла
def readFromFile(filePath)
	if not File.file?(filePath)
		return nil
	end
    file = File.new(filePath, "r:UTF-8")
    return file.readlines
end

def mean_count_letters(line, letters)
	list_words = line.split()
	count = 0
	letters == 'vowel' ?
		list_words.each { |word| count += word.scan(/a|e|i|o|u|y/).size } :
		list_words.each { |word| count += word.scan(/b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|w|x|z/).size }
	count.to_f/list_words.size.to_f
end
def difference line
	(mean_count_letters(line, 'consonant') - mean_count_letters(line, 'vowel')).abs
end
def cvdMean lines
	lines.sort { |a, b| difference(a) <=> difference(b) }
end

lines = readFromFile(ARGV[0])
puts cvdMean(lines)