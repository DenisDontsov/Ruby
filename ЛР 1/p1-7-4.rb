# Метод 1
def gcd a, b
    a, b = b, a if a < b
    if b == 0 then
        return a
    else
        remainder = a % b
    end
    until remainder == 0
        a, b = b, remainder
        remainder = a % b
    end
    b
end

def coprime x
    num = 2
    counter = 0
    while num <= x
        counter += 1 if (gcd(x, num)) != 1
        num += 1
    end
    counter
end

# Метод 2
def max_digit_non_multiplying_of_3 number_string
    max = -1
    number_string.each_char do |i|
        if Integer(i) % 3 != 0 && max < Integer(i)
            puts(Integer(i), max)
            max = Integer(i)
        end
    end
    max
end

# Метод 3

def lcd a
    b = 2
    while a % b != 0
        b += 1
    end
    b
end

def max_coprime a
    b = a - 1
    while (b >= 2) ^ ((gcd(a, b) == 1) ^ (b % lcd(a) == 1))
        b -= 1
    end
    b
end

def sum_of_digits number_string
    sum = 0
    number_string.each_char do |i|
        sum += Integer(i) if Integer(i) < 5
    end
    sum
end

def main
    method = ARGV[0]
    case method
    when "1"
        puts "Введите число"
        x = Integer(STDIN.gets.chomp)
        puts "Количество чётных чисел, не взаимно простых с #{x} = #{coprime x}"
    when "2"
        puts "Введите число"
        x = Integer(STDIN.gets.chomp)
        puts "Максимальная цифра числа #{x}, не делящяяся на 3, равна #{max_digit_non_multiplying_of_3 x.to_s}"
    when "3"
        puts "Введите число"
        x = Integer(STDIN.gets.chomp)
        puts "Произведение максимального числа, не взаимно простого с данным, не делящегося на наименьший делитель исходно числа, и суммы цифр числа, меньших 5 равно #{max_coprime(x) * sum_of_digits(x.to_s)}"
    else
        puts "-h\n1 - Количество чётных чисел, не взаимно простых с данным\n
        2 - Максимальная цифра числа, не делящяяся на 3\n
        3 - Произведение максимального числа, не взаимно простого с данным, не делящегося на наименьший делитель исходно числа, и суммы цифр числа, меньших 5"
    end
end

main