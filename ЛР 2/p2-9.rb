# 4
def palindrome? string
    string == string.reverse
end
# 11
def amount_of_words string
    string.count(" ") + 1
end
# 15
def amount_of_different_digits n
    a = []
    count = 0
    while n.index('0') == 0
        n.slice!(0)
    end
    n.each_char do |i|
        unless a.include?(i)
            a << i
            count += 1
        end
    end
    return count
end
def main
    puts "Введите номер задачи:
    1 - Найти максимальный элемент;
    2 - Проверить, является ли строка палиндромом;
    3 - Посчитать количетво слов в строке;
    4 - Посчитать количество цифр в натуральном числе."
    task = STDIN.gets.chomp
    case task
    when "1"
        puts "Введите строку чисел через пробел:"
        str = STDIN.gets.chomp
        puts "Максимальный элемент: #{str.split.map { |i| Integer(i)}.max}"
    when "2"
        puts "Введите строку:"
        str = STDIN.gets.chomp
        if palindrome? str
            puts "Является палиндромом."
        else
            puts "Не является палиндромом." 
        end
    when "3"
        puts "Введите строку слов через пробел:"
        str = STDIN.gets.chomp
        puts " Количество слов: #{amount_of_words str}"
    when "4"
        puts "Введите натуральное число:"
        n = STDIN.gets.chomp
        puts "Количество различных цифр: #{amount_of_different_digits n}"
    end
end
main