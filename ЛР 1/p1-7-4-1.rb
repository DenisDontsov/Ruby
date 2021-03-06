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
        if (gcd(x, num)) != 1
            counter += 1
        end
        num += 2
    end
    counter
end

puts "Введите число"
x = Integer(STDIN.gets.chomp)
puts "Количество чётных чисел, не взаимно простых с #{x} = #{coprime x}"