
transaction_time = Time.new 

  puts ""
  puts "Welcome to James coffee emporium!"
  puts ""
  puts "1) Add item - $5.00 - Light Bag"
  puts "2) Add item - $7.50 - Medium Bag"
  puts "3) Add item - $9.75 - Bold Bag"
  puts "4) Complete Sale"


  coffee_selection = {light: 5.00, medium: 7.50, dark: 9.75}
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

    sale_total = (subtotal_light + subtotal_medium + subtotal_dark)

    puts "Please enter the coffee code"
    puts ""
    input_selection = gets.chomp.to_i
    puts ""

  if input_selection == 4
    puts "====== Sale Complete ======="
    puts "Light Roast = #{light_total} Total = $#{subtotal_light}" ###########.round(2) ?
    puts "Medium Roast = #{med_total} Total = $#{subtotal_medium}"
    puts "Dark Roast  = #{dark_total} Total = $#{subtotal_dark}"
    puts "French Vanilla = "
    puts "========= Total Due ========"
    puts "Sale Total $#{sale_total}"
    puts "Enter amount paid"
    amount_tendered = gets.chomp.to_f
    puts "Amount Tendered $#{amount_tendered}"
    change_due = amount_tendered - sale_total

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

    puts "How many bags would you like to buy?"
    input_quantity = gets.chomp.to_i
    puts ""

  if input_selection == 1 
    light_invoice << input_quantity
    puts "Amount of Light Roast added to invoice = #{light_invoice}"

  elsif input_selection == 2 
    medium_invoice << input_quantity
    puts "Amount of Medium Roast added to invoice = #{medium_invoice}"

  elsif input_selection == 3
    dark_invoice << input_quantity
    puts "Amount of Dark Roast added to invoice  = #{dark_invoice}"

  end
end


