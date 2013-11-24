require 'pry'
require 'csv'

transaction_time = Time.new 

coffee = {
  1 => {"name" => "light", "price" => "5.00", "cost" => "2.50", "sku" => "1", "counter" => "0"},
  2 => {"name" => "medium", "price" => "7.50", "cost" => "3.50", "sku" => "2", "counter" => "0"},
  3 => {"name" => "dark", "price" => "9.50", "cost" => "5.50", "sku" => "3", "counter" => "0"}
}

item_key = coffee.keys.length + 1

CSV.foreach("products.csv", headers: true) do |row|
  coffee[item_key] = row.to_hash
  item_key += 1
end
puts "Welcome to James' coffee emporium!...Please select from the menu"
puts "1) Add item  - $5.00 - Light Bag"
puts "2) Add item  - $7.50 - Medium Bag"
puts "3) Add item  - $9.50 - Dark Bag"
puts "4) To compleate cransaction"
puts "5) To enter manager section"

while true 

    puts "Please enter the coffee code"
     puts ""
     input_selection = gets.chomp.to_i
     puts ""
     puts input_selection
   if input_selection == 4
     puts "====== Sale Complete ======="
     puts "Light Roast =  Total = $"
     puts "Medium Roast = # Total = $#"
     puts "Dark Roast  = # Total = #"
     puts "========= Total Due ========"
     puts "Sale Total $"
     puts "Enter amount paid"
     amount_tendered = gets.chomp.to_f
     puts "Amount Tendered $#{amount_tendered}"
#     change_due = amount_tendered - sale_total

   if amount_tendered < sale_total
     still_due = sale_total - amount_tendered
     puts "Insufficient amount! Customer still owes $#{still_due}."

   else  amount_tendered > sale_total
     puts 'Here is your change'
     puts change_due
     puts transaction_time.strftime("%B %d, %Y, %I:%M %p")
     puts ""
   end
   break
   end

 #    puts "How many bags would you like to buy?"
 #    input_quantity = gets.chomp.to_i
#     puts ""

  if input_selection == 1 
     #light_invoice << input_quantity
     puts "Amount of Light Roast added to invoice = #"

  elsif input_selection == 2 
#     medium_invoice << input_quantity
     puts "Amount of Medium Roast added to invoice = #"

   elsif input_selection == 3
#     dark_invoice << input_quantity
     puts "Amount of Dark Roast added to invoice  = #"

  end
end


