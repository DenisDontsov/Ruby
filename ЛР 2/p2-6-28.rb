puts "Введите элементы целочисленного массива (пустая строка завершает ввод):"
a = []
input = STDIN.gets.chomp
while input != ""
    a.concat(input.split.map{ |i| Integer(i)})
    input = STDIN.gets.chomp
end
i1 = 0
i2 = 0
for i in 0...a.length
    if a[i] == a.max
        i1 = i
        break
    end
end
i = a.length - 1
while i1 > 0
    if a[i] == a.max
        i2 = i
        break
    end
    i -= 1
end
print a.slice!(i1..i2)