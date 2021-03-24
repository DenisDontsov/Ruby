def max_digit_non_multiplying_of_3 number_string
    max = -1
    number_string.each_char do |i|
        if Integer(i) % 3 != 0 && max < Integer(i)
            max = Integer(i)
        end
    end
    max
end

puts "Введите число"
x = Integer(STDIN.gets.chomp)
puts "Максимальная цифра числа #{x}, не делящяяся на 3, равна #{max_digit_non_multiplying_of_3 x.to_s}"