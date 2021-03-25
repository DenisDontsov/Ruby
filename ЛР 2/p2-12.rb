def readFromFile(filePath)
	if not File.file?(filePath)
		return nil
	end
    file = File.new(filePath, "r:UTF-8")
    return file.readlines
end

def task12 (lines)
	return lines.sort_by {|line| line.length}
end

lines = readFromFile(ARGV[0])
puts task12(lines)