puts "Введите натуральное число:"
s = Integer STDIN.gets.chomp
a = []
count = 0
n = s.to_s
n.each_char do |i|
    unless a.include?(i)
        a << i
        count += 1
    end
end
print count