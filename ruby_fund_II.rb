#I am prompted to enter a sale price for an item
#If I specify a valid amount of currency, the item is added to a list, and it updates the subtotal
#If I specify an invalid amount of currency, the item is not added to the list, and the subtotal is unaffected

#sales_price = ""
array = []
transaction_time = Time.now

while true
    puts "What is the sales price"
    
    sales_price = gets.chomp.to_f
    #sales_price2 = sales_price.to_f
    
    array << sales_price if sales_price > 0
    
    subtotal = array.inject(0) { |result, element| result + element }
    puts "Your subtotal is $#{subtotal}"


  if sales_price.to_s.downcase == "done"    
    puts "Here are your items prices"
    puts array
    puts "Total amout due is $#{subtotal}"
    puts "Amout tendered?"
    amount_tendered = gets.chomp.to_i
    change_due = amount_tendered - subtotal
  

  if amount_tendered < subtotal
  still_due = subtotal - amount_tendered
  puts "Insufficient amount! Customer still owes $" + still_due.to_s + " shoot him!"

  else  amount_tendered > 0
  puts 'Here is your change'
  puts change_due
  puts transaction_time
  end

    break
  end
end
