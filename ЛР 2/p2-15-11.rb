def readFromFile(filePath)
	if not File.file?(filePath)
		return nil
	end
    file = File.new(filePath, "r:UTF-8")
    return file.readlines
end

def dis_3 array
    array.combination(3).to_a.map { |a| a.mean }
end

def ascii string
    string.chars.map { |ch| Integer(ch.ord) }
end

def squared_deviation_from array, x
    Math.sqrt(array.map { |i| (i - x) ** 2 }.sum / array.length)
end

lines = readFromFile(ARGV[0])

dis_3_max = dis_3(ascii(lines[0])).max
puts lines.sort { |a, b| squared_deviation_from(ascii(a), dis_3_max) <=> squared_deviation_from(ascii(b), dis_3_max) }