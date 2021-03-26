def main
    puts "Введите количество элементов"
    n = Integer STDIN.gets.chomp
    puts "Введите список"
    list = []
    for i in 0...n
        item = Integer STDIN.gets.chomp
        list[i] = item
    end
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
main