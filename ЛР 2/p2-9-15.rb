puts "Введите натуральное число:"
n = STDIN.gets.chomp
a = []
count = 0
n.each_char do |i|
    unless a.include?(i)
        a << i
        count += 1
    end
end
print count