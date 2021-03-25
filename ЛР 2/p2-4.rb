def read_list_from_file filename
    file = open filename
    lines = []
    while (line = file.gets)
        lines.push line.chomp
    end
    file.close
    lines
end

puts "Введите имя файла"
filename = STDIN.gets.chomp
list = read_list_from_file filename
print list