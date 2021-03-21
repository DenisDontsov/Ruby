puts "Введите элементы целочисленного массива (пустая строка завершает ввод):"
a = []
input = STDIN.gets.chomp
while input != ""
    a.concat(input.split.map{ |i| Integer(i)})
    input = STDIN.gets.chomp
end
puts b = a.slice(((a.index(a.max)) + 1)..a.length)
print a.slice!(a.index(a.max)..(a.index(a.max) + b.index(a.max) + 1))