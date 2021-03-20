def main
    max_n = 2
    max_amount = 2
    for n in 2..1000000
        x = n
        amount = 0
        while x != 1
            if x % 2 == 0 
                x /= 2 
            else
                x = 3*x + 1
            end
            amount += 1
        end
        if amount > max_n
            max_amount = amount
            max_n = n
        end
    end
    puts max_n
end
main 
