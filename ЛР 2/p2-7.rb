require 'prime'

def task6_4 a
    h = {}
    for i in 0...a.length
        h[i] = a[i]
    end
    return h.sort_by{|_key, value| value}.reverse.to_h
end

def task6_16 a
    b = a.slice(((a.index(a.max)) + 1)..a.length)
    return a.slice!(a.index(a.max)..((a.index(a.max)) + (b.index(a.max)) + 1))
end

def task6_28 a
    return a.slice!(a.index(a.max)..a.rindex(a.max))
end

def task6_40 a
    return ((a.filter { |i| i.even?}).min)
end

def task6_52 n
    a = []
    Prime.each(n) do |prime|
        if n % prime == 0
            l = (Math.log(n, prime)).round
            if prime**l == n
                l.times {a << prime}
            else
                a << prime
            end
        end
    end
    a
end

def main
    puts "Введите задание:
    1 - Дан целочисленный массив. Вывести индексы массива в том порядке, 
    в котором соответствующие им элементы образуют убывающую последовательность.
    2 - Дан целочисленный массив. Необходимо найти элементы,
    расположенные между первым и вторым максимальным.
    3 - Дан целочисленный массив. Необходимо найти элементы,
    расположенные между первым и последним максимальным.
    4 - Дан целочисленный массив. Необходимо найти минимальный четный элемент.
    5 - Для введенного числа построить список всех его простых делителей,
    причем если введенное число делится на простое число p в степени n,
    то в итоговом списке число p должно повторятся n раз.
    Результирующий список должен быть упорядочен по возрастанию."
    task = STDIN.gets.chomp
    if (task == "1") ^ (task == "2") ^ (task == "3") ^(task == "4")
        puts "Введите элементы списка (пустая строка завершает ввод):"
        a = []
        input = STDIN.gets.chomp
        while input != ""
            a.concat(input.split.map{ |i| Integer(i)})
            input = STDIN.gets.chomp
        end
    end
    case task
    when "1"
        h2 = task6_4(a)
        h2.each do |key, value|
            print "#{key} "
        end
    when "2"
        print task6_16(a)
    when "3"
        print task6_28(a)
    when "4"
        print task6_40(a)
    when "5"
        puts "Введите число"
        n = Integer STDIN.gets.chomp
        print task6_52(n)
    else
        puts "Неверный ввод."
    end
end
main