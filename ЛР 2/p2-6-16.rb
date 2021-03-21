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
for i in i1+1...a.length
    if a[i] == a.max
        i2 = i
        break
    end
end
print a.slice!(i1..i2)