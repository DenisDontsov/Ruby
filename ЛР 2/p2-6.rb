def listInput n
    puts "Введите список"
    list = []
    for i in 0...n
        item = Integer STDIN.gets.chomp
        list[i] = item
    end
    list
end

def task6_4 list1, n
    list2 = []
    min = list1[0]
    for i in 0...n
        if list1[i] < min
            min = list1[i]
        end
    end
    max_i = i
    loop do
        max = min - 1
        for i in 0...n
            if list1[i] > max
                max = list1[i]
                max_i = i
            end
        end
        if max == min
            for i in 0...n
                if list1[i] == min
                    list2 << i
                end
            end
            break
        else
            list2 << max_i
            list1[max_i] = min - 1
        end
    end
    list2
end

def task6_16 list, n
    min = list[0]
    for i in 0...n
        if min > list[i]
            min = list[i]
        end
    end
    max1 = min
    max1_i = -1
    max2 = min
    max2_i = -1
    i = n - 1
    while (i >= 0)
        if list[i] >= max1
            max1 = list[i]
            max1_i = i
        end
        i -= 1
    end
    i = n - 1
    while (i >= 0)
        if (list[i] >= max2) && (i != max1_i)
            max2 = list[i]
            max2_i = i
        end
        i -= 1
    end
    if max1_i < max2_i
        for i in max1_i..max2_i
            print "#{list[i]} "
        end
    elsif max1_i > max2_i
        for i in max2_i..max1_i
            print "#{list[i]} "
        end
    else
        print"#{list[max1_i]} #{list[max2_i]}"
    end
end

def task6_28 list, n
    min = list[0]
    for i in 0...n
        if min > list[i]
            min = list[i]
        end
    end
    max1 = min
    max1_i = -1
    max2 = min
    max2_i = -1
    i = n - 1
    while (i >= 0)
        if list[i] >= max1
            max1 = list[i]
            max1_i = i
        end
        i -= 1
    end
    i = 0
    while (i < n)
        if (list[i] >= max2) && (i != max1_i)
            max2 = list[i]
            max2_i = i
        end
        i += 1
    end
    if max1_i < max2_i
        for i in max1_i..max2_i
            print "#{list[i]} "
        end
    elsif max1_i > max2_i
        for i in max2_i..max1_i
            print "#{list[i]} "
        end
    else
        print"#{list[max1_i]} #{list[max2_i]}"
    end
end

def task6_40 list, n
    max = list[0]
    for i in 0...n
        if max < list[i]
            max = list[i]
        end
    end
    min = max + 1
    for i in 0...n
        if (min > list[i]) && (list[i] % 2 == 0)
            min = list[i]
        end
    end
    if min == max + 1
        print "Такого нет"
    else
        print min
    end
end

def prime number
    a = []
    for i in 0...number
        a[i] = true
    end
    i = 2
    while i*i <= number
        if a[i] == true
            j = i*i
            while j <= number
                a[j] = false
                j += i
            end 
        end
        i += 1
    end
    b = []
    for i in 2...number
        if a[i] == true
            b << i
        end
    end
    b
end

def task6_52 n
    list = []
    primes_list = prime(n)
    for i in primes_list
        if n % i == 0
            counter = 1
            j = i
            while j < n
                j*=i
                counter += 1
            end
            if j == n
                counter.times {list << i}
            else
                list << i
            end
        end
    end
    list
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
        puts "Введите количество элементов"
        n = Integer STDIN.gets.chomp
        list = listInput n
        print task6_4(list, n)
    when "2"
        puts "Введите количество элементов"
        n = Integer STDIN.gets.chomp
        list = listInput n
        task6_16(list, n)
    when "3"
        puts "Введите количество элементов"
        n = Integer STDIN.gets.chomp
        list = listInput n
        task6_28(list, n)
    when "4"
        puts "Введите количество элементов"
        n = Integer STDIN.gets.chomp
        list = listInput n
        task6_40(list, n)
    when "5"
        puts "Введите число"
        n = Integer STDIN.gets.chomp
        print task6_52(n)
    else
        puts "Неверный ввод."
    end
end
main