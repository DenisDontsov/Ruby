def list1 n
    list = Array.new
    0.upto(n - 1) do |i|
        item = STDIN.gets.chomp
        list.insert(i, item)
    end
    list
end
def list2 n
    list = Array.new
    n.times do |i|
        item = STDIN.gets.chomp
        list.push item
    end
    list
end
def list3 n
    list = Array.new
    0.upto(n - 1) do |i|
        item = STDIN.gets.chomp
        list[i] = item
    end
    list
end
def list4 n
    list = Array.new
    n.times do |i|
        item = STDIN.gets.chomp
        list += [item]
    end
    list
end
def list5 n
    list = Array.new
    for i in (0..n-1)
        item = STDIN.gets.chomp
        list[i] = item
    end
    list
end
def read_list_from_file filename
    file = open filename
    lines = []
    while (line = file.gets)
        lines.push line.chomp
    end
    file.close
    lines
end
list = read_list_from_file ARGV[0]
puts "Введите способ"
task = STDIN.gets.chomp
puts "Введите количество элементов"
n = Integer STDIN.gets.chomp
puts "Введите список"
case task
when "1"
    list = list1 n
when "2"
    list = list2 n
when "3"
    list = list3 n
when "4"
    list = list4 n
when "5"
    list = list5 n
end
print list