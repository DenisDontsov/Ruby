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

puts "Введите число"
x = Integer(STDIN.gets.chomp)
puts "Произведение максимального числа, не взаимно простого с данным, 
не делящегося на наименьший делитель исходно числа, 
и суммы цифр числа, меньших 5 равно #{max_coprime(x) * sum_of_digits(x.to_s)}"