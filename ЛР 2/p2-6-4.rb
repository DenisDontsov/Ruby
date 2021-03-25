def main
    puts "Введите количество элементов"
    n = Integer STDIN.gets.chomp
    puts "Введите список"
    list1 = []
    for i in 0...n
        item = Integer STDIN.gets.chomp
        list1[i] = item
    end
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
    print list2
end
main