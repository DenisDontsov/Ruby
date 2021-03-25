require 'prime'

def listInput
    puts "Введите количество элементов"
    n = Integer STDIN.gets.chomp
    puts "Введите список"
    list = []
    for i in 0...n
        item = STDIN.gets.chomp
        list[i] = item
    end
    list
end

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
    то в итоговом списке число p должно повторятся n раз."
    task = STDIN.gets.chomp
    case task
    when "1"
        list = listInput
        h2 = task6_4(list)
        h2.each do |key, value|
            print "#{key} "
        end
    when "2"
        list = listInput
        print task6_16(list)
    when "3"
        list = listInput
        print task6_28(list)
    when "4"
        list = listInput
        print task6_40(list)
    when "5"
        puts "Введите число"
        n = Integer STDIN.gets.chomp
        print task6_52(n)
    else
        puts "Неверный ввод."
    end
end
main