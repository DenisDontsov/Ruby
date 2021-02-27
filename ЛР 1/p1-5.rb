number = ARGV[0]
# 5
def sum_of_digits number_string
    sum = 0
    number_string.each_char do |i|
        sum += Integer(i)
    end
    sum
end

# 6
def max_digit number_string
    max = Integer number_string[0]
    number_string.each_char do |i|
        max = Integer(i) if max < Integer(i)
    end
    max
end

def min_digit number_string
    min = Integer number_string[0]
    number_string.each_char do |i|
        min = Integer(i) if min > Integer(i)
    end
    min
end

def product_of_digits number_string
    product = 1
    number_string.each_char do |i|
        product *= Integer(i)
    end
    product
end