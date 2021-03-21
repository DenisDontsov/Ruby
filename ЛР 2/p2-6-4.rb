puts "Введите элементы списка (пустая строка завершает ввод):"
a = []
input = STDIN.gets.chomp
while input != ""
    a.concat(input.split.map{ |i| Integer(i)})
    input = STDIN.gets.chomp
end
h = {}
for i in 0...a.length
    h[i] = a[i]
end
h2 = h.sort_by{|_key, value| value}.reverse.to_h
h2.each do |key, value|
    print "#{key} "
end
