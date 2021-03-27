require 'descriptive_statistics'

def readFromFile(filePath)
	if not File.file?(filePath)
		return nil
	end
	file = File.new(filePath, "r:UTF-8")
	return file.readlines
end
# 2-12
def task12 (lines)
	return lines.sort_by {|line| line.length}
end
# 2-13
def task13(lines)
	return lines.sort_by {|line| line.split.count}
end
# 2-14
def task14(lines)
	lines.sort_by {|line| line.split.select {|w1, w2| not w1.scan(/\d+/).empty?}.count}
end
# 2-15-1
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
def task15_1 lines
	lines.sort { |a, b| difference(a) <=> difference(b) }
end
# 2-15-5
$frequencyInAlphabet = {
	'о' => 0.10983,
	'е' => 0.08483, 
	'а' => 0.07998, 
	'и' => 0.07367, 
	'н' => 0.067, 
	'т' => 0.06318, 
	'с' => 0.05473, 
	'р' => 0.04746, 
	'в' => 0.04533, 
	'л' => 0.04343, 
	'к' => 0.03486, 
	'м' => 0.03203, 
	'д' => 0.02977, 
	'п' => 0.02804, 
	'у' => 0.02615, 
	'я' => 0.02001, 
	'ы' => 0.01898, 
	'ь' => 0.01735, 
	'г' => 0.01687, 
	'з' => 0.01641, 
	'б' => 0.01592, 
	'ч' => 0.0145, 
	'й' => 0.01208, 
	'х' => 0.00966, 
	'ж' => 0.0094, 
	'ш' => 0.00718, 
	'ю' => 0.00639, 
	'ц' => 0.00486, 
	'щ' => 0.00361, 
	'э' => 0.00331, 
	'ф' => 0.00267, 
	'ъ' => 0.00037, 
	'ё' => 0.00013,

	'e' => 0.1116,
	'a' => 0.08496,
	'r' => 0.0758,
	'i' => 0.07544,
	'o' => 0.07163,
	't' => 0.0695,
	'n' => 0.06654,
	's' => 0.05735,
	'l' => 0.05489,
	'c' => 0.04538,
	'u' => 0.0363,
	'd' => 0.03384,
	'p' => 0.03167,
	'm' => 0.03012,
	'h' => 0.03003,
	'g' => 0.0247,
	'b' => 0.02072,
	'f' => 0.01812,
	'y' => 0.01777,
	'w' => 0.01289,
	'k' => 0.01101,
	'v' => 0.01007,
	'x' => 0.0029,
	'z' => 0.00272,
	'j' => 0.001965,
	'q' => 0.001962
}
def mostOftenSymbol(line)
	frequencies = Hash.new
	line.each_char do |char| 
		if frequencies.include?(char) then frequencies[char] += 1
		else frequencies[char] = 1
		end
	end
	return frequencies.invert[frequencies.invert.keys.max]
end
def standartDeviation(val1, val2)
	return Math.sqrt((val1 - val2)**2) 
end
def symbolFrequency(symbol, line)
	return line.count(symbol) / line.length.to_f
end
def task15_5(lines)
	return lines.sort_by do |line| 
	lowerLine = line.downcase
	standartDeviation(symbolFrequency(mostOftenSymbol(lowerLine), lowerLine), $frequencyInAlphabet[mostOftenSymbol(lowerLine)])
	end
end
# 2-15-7
def pair_count_difference str
	count_con_vow = str.scan(/(?:б|в|г|д|ж|з|к|л|м|н|п|р|с|т|ф|х|ц|ч|ш|щ){1}(?:а|е|ё|и|о|у|э|ю|я){1}/).size
	count_vow_con = str.scan(/(?:а|е|ё|и|о|у|э|ю|я){1}(?:б|в|г|д|ж|з|к|л|м|н|п|р|с|т|ф|х|ц|ч|ш|щ){1}/).size
	count_con_vow - count_vow_con
end

def task15_7 list_str
	list_str.sort { |a, b| pair_count_difference(a) <=> pair_count_difference(b) }
end

# 2-15-11
def dis_3 array
	array.combination(3).to_a.map { |a| a.mean }
end
def ascii string
	string.chars.map { |ch| Integer(ch.ord) }
end
def squared_deviation_from array, x
	Math.sqrt(array.map { |i| (i - x) ** 2 }.sum / array.length)
end
def task15_11 lines
	dis_3_max = dis_3(ascii(lines[0])).max
	puts lines.sort { |s1, s2| squared_deviation_from(ascii(s1), dis_3_max) <=> squared_deviation_from(ascii(s2), dis_3_max) }
end

lines = readFromFile(ARGV[0])
puts "Введите номер задачи:
	   1 - Упорядочить по длине строки;
	   2 - Упорядочить по количеству слов;
	   3 - Упорядочить по количеству слов, идущих после чисел;
	   Отсортировать строки в указанном порядке:
	   4 - В порядке увеличения разницы между средним количеством согласных и средним количеством гласных букв в строке;
	   5 - В порядке увеличения квадратичного отклонения частоты встречаемости
	   самого часто встречаемого в строке символа от частоты его встречаемости в текстах на этом алфавите;
	   6 - В порядке увеличения разницы между количеством сочетаний
	   «гласная-согласная» и «согласная-гласная» в строке;
	   7 - В порядке увеличения квадратичного отклонения среднего веса ASCII-кода 
	   символа строки от среднего веса ASCII-кода символа первой строки."
task = STDIN.gets.chomp
case task
when "1"
	puts task12(lines)
when "2"
	puts task13(lines)
when "3"
	puts task14(lines)
when "4"
	puts task15_1(lines)
when "5"
	puts task15_5(lines)
when "6"
	puts task15_7(lines)
when "7"
	puts task11_11(lines)
else
	puts "Неверный ввод."
end