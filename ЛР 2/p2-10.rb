str = STDIN.gets.chomp
regex = /(\d\d?\s)(марта|апреля|мая)(\s\d+)/i
dates = str.scan(regex)
puts dates.map { |date| date.join}
