#User Stories
 
#As a clerk
#I want to enter a selection from a list
#so that a running total of items and price can be calculated
 
#As a clerk
#I want to end a sale using a command
#so that a tally of items purchased and subtotal is displayed
 
#As a clerk
#I want to enter the amount tendereded
#so that I can return correct change
 
#Acceptance Criteria
 
#The items and prices are displayed to the clerk with corresponding commands
#The clerk uses the appropriate command to select item
#The clerk inputs quantity of item purchased
#The clerk uses appropriate command to end transactions
#The clerk enters the amount tendered
#The clerk returns appropriate change as necessary
 
time = Time.new
require 'csv'
 
#the following puts the contents of my csv into an array of arrays
csv_to_array_of_arrays= []
CSV.foreach('coffee_selection.csv') do |row|
csv_to_array_of_arrays << row
end
 
#track my orders using these arrays & hashes
retail_subtotal = []
wholesale_subtotal = []
coffee_type_bag_count = []
bag_tally = coffee_type_bag_count.uniq.map{|x| [x,coffee_type_bag_count.select{|y| y == x}.length]}  #no idea why 
 
 
puts "Welcome to James' coffee emporium!"
puts ''
 
puts "Enter 1 to begin a new sale.  Use END to finalize a sale:  "
puts "Enter 2 to use the management system:  "
puts ''
starting_option = gets.chomp.to_i
 
  if (1..2).member?(starting_option) == false
    puts "Only available options are 1 and 2.  Try again."  #would like to loop back to 'Enter 1 or 2 rather than close.
 
  elsif starting_option == 2
    transaction_csv_to_array_of_arrays = []
    CSV.foreach('sales_transactions.csv') do |row|
      transaction_csv_to_array_of_arrays << row
    end
 
      print transaction_csv_to_array_of_arrays
 
    puts ''
    puts "To see transaction detail, please enter the date you would like to review:   "
    print "Date (mm-dd-yyy) =>  "
    transaction_date = gets.chomp
 
  else
 
    while true
 
    puts ''
    print "Enter SKU number:   "
 
    sku = gets.chomp
      
      if sku == 'end'       #from here, begin to tabulate the results and output a reciept.
 
          puts ''
          puts "========== Sale Complete =========="
          puts "The total of this transaction is $#{retail_subtotal.reduce(:+)}." 
          puts "Your selection includes: #{bag_tally}" #inject(Hash.new { |h,k| h[k] = []}) { |h, (k,v)| h[k] << v; h}}"
          puts "=================================="
          puts ''
 
          print "What is the amount tendered?   $"
            
          amount_tendered = gets.chomp.to_f
            
          puts ''
          puts ''
 
            if amount_tendered < retail_subtotal.reduce(:+)
              cust_owes = retail_subtotal.reduce(:+) - amount_tendered                  #not graceful.  I couldn't yet figure out how to do this in-line, so multiple variables are being created. 
              cust_owes2 = format("$%.2f",cust_owes)
              puts "WARNING: Customer still owes #{cust_owes2}. Exiting..."
              puts''
              
            break
            
            elsif amount_tendered > retail_subtotal.reduce(:+).to_f                     #not graceful.  I couldn't yet figure out how to do this in-line, so multiple variables are being created.
            
                transaction_array_for_output = []
                transaction_array_for_output << time.strftime('%m-%d-%Y')
                transaction_array_for_output << time.strftime("%I:%M %p")
                transaction_array_for_output << coffee_type_bag_count.length
                transaction_array_for_output << retail_subtotal.reduce(:+)
                transaction_array_for_output << wholesale_subtotal.reduce(:+)
                transaction_array_for_output << retail_subtotal.reduce(:+) - wholesale_subtotal.reduce(:+)
 
              CSV.open("sales_transactions.csv", "a+") do |csv|    #change to append for production
                #if csv.tell() == 0 
                  #csv <<  ['Date', 'Time', 'Total Bags Sold', 'Retail Sale Total', 'Cost of Goods Total', 'Profit Total']
                #end
                csv << transaction_array_for_output
              end
 
              change_due = amount_tendered - retail_subtotal.reduce(:+)
              change_due2 = format("$%.2f",change_due)
              puts ''
              puts "===Thank you!==="
              puts ''
              puts "The total change due is #{change_due2}"
              puts ''
              puts time.strftime("%a %b %d, %Y %I:%M %p")                #found on Google.  I was able to understand and manipulate so it displayed I wanted it to display.
              puts ''
              puts "==============="
              
            break
               
            elsif amount_tendered = retail_subtotal.reduce(:+)
              puts ''
              puts "===Thank you!==="
              puts ''
              puts "Exact change tendered."
              puts ''
              puts time.strftime("%a %b %d, %Y %I:%M %p")
              puts ''
              puts "==============="
 
            break
            
            end
        
        break
      
      else
 
 
puts ''
print "Enter quantity:   "
quantity = gets.chomp.to_i
puts ''
 
#Assign my array positions to logical variables - for clarity.  
 
sku_number = 0
coffee = 1
retail = 2
wholesale = 3
 
#assign the specific array within the arrays to a variable that I can work off of
 
order = csv_to_array_of_arrays.select { |array| array[sku_number] == sku}.flatten
 
#assign the different values inside of the array to variables so that I can work with them.
 
coffee_type = order[coffee]
price = order[retail].to_f * quantity
wholesale = order[wholesale].to_f * quantity
 
#push results from the array of array to arrays instantiated above, for tracking purposes
 
retail_subtotal << price 
wholesale_subtotal << wholesale
quantity.times do 
  coffee_type_bag_count.push coffee_type 
end
bag_tally = coffee_type_bag_count.uniq.map{|x| [x,coffee_type_bag_count.select{|y| y == x}.length]}  #no idea why 
 
 
puts "The subtotal of this transaction is $#{retail_subtotal.reduce(:+)}."
    end
  end
end