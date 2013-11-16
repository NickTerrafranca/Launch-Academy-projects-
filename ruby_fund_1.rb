puts 'What is the amount due?'
amount_due = gets.chomp.to_f
transaction_time = Time.now

if amount_due == 0.0 
  puts "We take money here, not wampum!" 
  exit
end

puts 'What was the amount paid?'
amount_paid = gets.chomp.to_f
change_due = amount_paid - amount_due

if amount_paid > 0
puts 'Here is your change'
puts change_due
puts transaction_time
end


if amount_paid < amount_due
  still_due = amount_due - amount_paid
  puts "Insufficient amount! Customer still owes " + still_due.to_s
  
end