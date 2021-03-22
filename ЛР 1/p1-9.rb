def main
    method = ARGV[0]
    case method
    when "1"
        puts "Введите число"
        x = Integer(STDIN.gets.chomp)
        counter = 0
        for i in 1..x
            if i.even? && i.gcd(x) != 1
                counter += 1
            end
        end
        puts "Количество чётных чисел, не взаимно простых с #{x} = #{counter}"
    when "2"
        puts "Введите число"
        x = Integer(STDIN.gets.chomp)
        max_digit_non_multiplying_of_3 = (x.digits.filter { |digit| digit % 3 != 0}).max
        puts "Максимальная цифра числа #{x}, не делящяяся на 3, равна #{max_digit_non_multiplying_of_3}"
    when "3"
        puts "Введите число"
        x = Integer(STDIN.gets.chomp)
        y = 2
        while x % y != 0
            y += 1
        end
        a = ((x.downto(1).filter{ |i| i % y != 0 && i.gcd(x) != 1}).max) * ((x.digits.filter { |digit| digit < 5}).sum)
        puts "Произведение максимального числа, не взаимно простого с данным,
        не делящегося на наименьший делитель исходного числа, и суммы цифр числа, меньших 5 равно #{a}"
    else
        puts "-h
        1 - Количество чётных чисел, не взаимно простых с данным;
        2 - Максимальная цифра числа, не делящяяся на 3;
        3 - Произведение максимального числа, не взаимно простого с данным, 
        не делящегося на наименьший делитель исходно числа, и суммы цифр числа, меньших 5"
    end
end

main
