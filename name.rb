puts 'Hello there, tell me, what is you\'r first name?'
name_f = gets.chomp
puts 'Nice to meet you ' + name_f + ', so what is you\'r middle name?'
name_m = gets.chomp
puts 'OK, what is you\'r last name?'
name_l = gets.chomp
name_total = name_f.length.to_i+name_m.length.to_i+name_l.length.to_i
puts 'It is wonderful to make your acquaintance '+name_f+' '+name_m+' '+name_l+'!'
puts 'Did you know that there are ' + name_total.to_s + ' letters in your full name?'
puts ' '