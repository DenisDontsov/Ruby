def check_sum_f(number)
    check_sum = 0
    number_string = number.to_s
    number_string.each_char do |n|
        if n == '0' then n = '1' end
        check_sum += (1..Integer(n)).inject(:*)
    end
    return check_sum == number
end
def final_sum_f()
    final_sum = 0
    for i in 3..100000
        if check_sum_f(i)
            final_sum += i
        end
    end
    return final_sum
end

puts final_sum_f()