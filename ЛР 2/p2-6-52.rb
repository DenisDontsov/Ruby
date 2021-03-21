require 'prime'
puts "Введите число:"
n = Integer STDIN.gets.chomp
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
print a