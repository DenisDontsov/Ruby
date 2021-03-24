number = ARGV[0]

def sum_of_digits number_string
    sum = 0
    number_string.each_char do |i|
        sum += Integer(i)
    end
    sum
end

puts sum_of_digits ARGV[0]
