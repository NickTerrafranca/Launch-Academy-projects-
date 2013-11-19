#I am prompted to enter a sale price for an item
#If I specify a valid amount of currency, the item is added to a list, and it updates the subtotal
#If I specify an invalid amount of currency, the item is not added to the list, and the subtotal is unaffected

#require 'pry'
array = []
transaction_time = Time.now
#binding.pry
while true

  
    puts "What is the sales price"
    
    #input_s = gets.chomp
    input_f = gets.chomp.to_f
    
    array << input_f if input_f > 0
    
    subtotal = array.inject(0) { |result, element| result + element }
    puts "Your subtotal is $#{subtotal}"
    
    input_s = gets.chomp.to_s
  if input_s.downcase == "done"    
    puts "Here are your items prices"
    puts array
    puts "Total amout due is $#{subtotal}"
    puts "Amout tendered?"
    amount_tendered = gets.chomp.to_i
    change_due = amount_tendered - subtotal
  

  if amount_tendered < subtotal
    still_due = subtotal - amount_tendered
    puts "Insufficient amount! Customer still owes $" + still_due.to_s + " - SHOOT HIM!"

  else  amount_tendered > 0
    puts 'Here is your change'
    puts change_due
    puts transaction_time
  end

    break
  end
end
