def readFromFile(filePath)
	if not File.file?(filePath)
		return nil
	end
    file = File.new(filePath, "r:UTF-8")
    return file.readlines
end

def pair_count_difference lines
	count_con_vow = lines.scan(/(?:б|в|г|д|ж|з|к|л|м|н|п|р|с|т|ф|х|ц|ч|ш|щ){1}(?:а|е|ё|и|о|у|э|ю|я){1}/).size
	count_vow_con = lines.scan(/(?:а|е|ё|и|о|у|э|ю|я){1}(?:б|в|г|д|ж|з|к|л|м|н|п|р|с|т|ф|х|ц|ч|ш|щ){1}/).size
	count_con_vow - count_vow_con
end

lines = readFromFile(ARGV[0])
puts lines.sort { |a, b| pair_count_difference(a) <=> pair_count_difference(b) }