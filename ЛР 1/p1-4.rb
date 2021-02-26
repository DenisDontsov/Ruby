puts "Введите команду ОС:"
os_command = "`#{STDIN.gets.chomp}`"
puts "Введите команду Ruby:"
ruby_command = STDIN.gets.chomp
puts "Результат выполнения команды ОС:"
eval("puts #{os_command}")
puts "Результат выполнения команды Ruby:"
puts eval(ruby_command)