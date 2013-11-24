#The file must contain a name, a SKU, a retail price, and a purchasing price.
#I can add these items to an order
##I can opt to enter a reporting section of the application where I am prompted to enter a date
#If sales data is found for that range, I am informed of the gross sales as well as the net profit. 
      #I am also told how many items were sold
#If sales data is found for that range, a well-formatted list of orders is outputted. Each order should include 
      #the date the order was completed, the time the order was completed, the total number of items purchased, 
      #the gross sales, and the cost of goods involved in that order
#If the range specified includes dates in the future, just show the data that is available
#If the range specified is invalid, alert the user with an error message
#If sales data is not found for that day, alert the user that no sales data was found

time = Time.new

require 'csv'
require 'pry'

csv_to_array_of_arrays = []
#method to open the file
#f = File.open('products.csv', 'r')
#products = f.read
CSV.foreach('products.csv') do |row|
  csv_to_array_of_arrays << row
end

#track my transactions using these arrays(and hash?).
retail_subtotal = []
wholesale_subtotal = []
coffee_type_bag_subtotal = []
#bag_tally = coffee_type_bag_count.uniq.map{|x| [x,coffee_type_bag_count.select{|y| y == x}.length]}  #no idea why 



puts ""
puts "Welcome to James coffee emporium!"
puts ""
puts "1) To start a new sale"
puts "2) To enter the record system"
puts "Type 'Done' to complete Sale"
start_input = gets.chomp.to_i
  #specify if we are going to go into reporting software
    if start_input >= 2
    puts "This feature is not available yet"
  #specify if we continue with our transaction.




end 
  while true
    start_input == 1
    puts "Input the SKU of the item you want to enter"
    input_sku = gets.chomp
    puts "How many bags?"
    input_number_bags = gets.chomp.to_i

    order = csv_to_array_of_arrays.select { |array| array[0] == input_sku}.flatten

      #getting input and pushing it to a variable
      subtotal = order[2].to_f * input_number_bags
      ap_subtotal = order[3].to_f * input_number_bags
      coffee_subtotal = order[1].to_s * input_number_bags

      #getting input variable and pushing to arrays
      retail_subtotal << subtotal  
      wholesale_subtotal << ap_subtotal
      coffee_type_bag_subtotal << coffee_subtotal

      puts "retail_subtotal $#{retail_subtotal}"
      puts "wholesale subtotal ##{wholesale_subtotal}" #this will go away
      puts "coffee subtotal #{coffee_type_bag_subtotal}"
      print "Type '1' to contunue with another transaction,\ntype 'Done' to compleate transaction."
      

      end_transaction = gets.chomp.downcase
      if end_transaction == "done"
        puts "====== Sale Complete ======="
        puts ""
        puts "========= Total Due ========"
        puts 
        puts "stuff in here"
        amount_tendered = gets.chomp.to_f
        puts "Amount Tendered "
        break
      end
    end




    #puts to arrays to agrogat info
    #verify that the arrays are collectiog the proper info
    

    #store coffee_bag_type_subtotal a hash?


#coffee_type_bag__count.uniq.each do |coffeetype|
#"{coffeetype}\t#{coffee_type_bag_count.count(coffeetype)}"
