puts "Введите натуральное число:"
n = STDIN.gets.chomp
a = []
count = 0
while n.index('0') == 0
    n.slice!(0)
end
n.each_char do |i|
    unless a.include?(i)
        a << i
        count += 1
    end
end
print count