#'Welcome to James' coffee emporium!'
#Need a selection of coffee listed from coffee 1 to 3
#Prompt to input coffee selection
#Need to be able to select a type of coffee
#Need to specify an amount to buy
#Need to confirm with subtotal
#Need to prompt with another transaction
#Need to complete sale with a list of purchased inventory
#Need to complete sale with total due
#Need Amount tendered
#Need prompt if amount tendered is less than amount due
#Need to provide change
#Need to print date time

require 'date'
Date.new(2012, 5, 2)

#transaction_time = DateTime.now.strftime('%m/%d/%Y')




puts ""
puts "Welcome to James coffee emporium!"
puts ""
puts "1) Add item - $5.00 - Light Bag"
puts "2) Add item - $7.50 - Medium Bag"
puts "3) Add item - $9.75 - Bold Bag"
puts "4) Complete Sale"


coffee_selection = {:light => 5.00, :medium => 7.50, :dark => 9.75}
light_invoice = []
medium_invoice = []
dark_invoice = []



while true 
  
  light_total = light_invoice.inject(0) { |result, element| result + element }
  med_total = medium_invoice.inject(0) { |result, element| result + element }
  dark_total = dark_invoice.inject(0) { |result, element| result + element }

  subtotal_light = light_total * coffee_selection[:light]
  subtotal_medium = med_total * coffee_selection[:medium]
  subtotal_dark = dark_total * coffee_selection[:dark]

  puts "Plese enter the coffee code"
  puts ""
  input_selection = gets.chomp.to_i
  puts ""

      #if input_selection > 4 
        #puts "Invalid Selection!"
      #end 

  if input_selection == 4
    puts "====== Sale Complete ======="
    puts "Light Roast = #{light_total} Total = #{subtotal_light}"
    puts "Medium Raost = #{med_total} Total = #{subtotal_medium}"
    puts "Dark Roast  = #{dark_total} Total = #{subtotal_dark}"
    #more here
    break
  end

  puts "How many bags would you like to buy?"
  input_quantity = gets.chomp.to_i
  puts ""

  if input_selection == 1 
    light_invoice << input_quantity
    puts "Amoumt of Light Roast added to invoice = #{light_invoice}"

  elsif input_selection == 2 
    medium_invoice << input_quantity
    puts "Amoumt of Medium Roast added to invoice = #{medium_invoice}"

  elsif input_selection == 3
    dark_invoice << input_quantity
    puts "Amoumt of Dark Roast added to invoice  = #{dark_invoice}"

  #if input_selection > 3
    #  puts "Here is your coffee bag quantity"
     # puts "and here is tour total"

    
  end
end
    #puts "subtotal"
    #puts "If you would like to continue with another purchase enter coffee code, otherwise type '1' for 'complete' sale."
    # if '1'
    #puts invoice
    #puts "total due"
    #puts "amount tendered?"
    #puts "Need prompt if amount tendered is less than amount due"
    #puts "provide change"
    #puts transaction_time