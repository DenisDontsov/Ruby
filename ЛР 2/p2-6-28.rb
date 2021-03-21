puts "Введите элементы целочисленного массива (пустая строка завершает ввод):"
a = []
input = STDIN.gets.chomp
while input != ""
    a.concat(input.split.map{ |i| Integer(i)})
    input = STDIN.gets.chomp
end
print a.slice!(a.index(a.max)..a.rindex(a.max))