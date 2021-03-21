def min array
    array.min
end
def max array
    array.max
end
def sum array
    array.sum
end
def product array
    product = 1
    array.each { |item| product *= item}
    product
end
puts "Введите элементы списка (пустая строка завершает ввод):"
a = Array.new
input = STDIN.gets.chomp
while input != ""
    a.concat(input.split.map{ |i| Integer(i)})
    input = STDIN.gets.chomp
end
puts "Минимум - #{min a}"
puts "Максимум - #{max a}"
puts "Сумма - #{sum a}"
puts "Произведение - #{product a}"