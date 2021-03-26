def main
    puts "Введите количество элементов"
    n = Integer STDIN.gets.chomp
    puts "Введите список"
    list = []
    for i in 0...n
        item = Integer STDIN.gets.chomp
        list[i] = item
    end
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
main