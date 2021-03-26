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

def main
    puts "Введите число:"
    n = Integer STDIN.gets.chomp
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
    print list
end
main