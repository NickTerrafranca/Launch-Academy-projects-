require 'csv'
require 'pry'
 
 
 
 
coffee = {
  1=>{"name"=>"light", "price"=>"5.0", "cost"=>"3", "SKU"=>"111", "counter"=> "0"},
  2=>{"name"=>"medium", "price"=>"7.5", "cost"=>"5", "SKU"=>"222", "counter"=> "0"},
  3=>{"name"=>"bold", "price"=>"9.75", "cost"=>"7", "SKU"=>"333", "counter"=> "0"}
}
 
index = coffee.keys.length + 1
 
CSV.foreach("products.csv", headers: true) do |row|
  coffee[index] = row.to_hash
  index += 1
end
 
 
 

 
 
def prompt(question)
  print question
  gets.chomp.to_i
end
 
items_selected = 0
quantity = 0
subtotal = 0
cost_of_goods = 0
 
while items_selected <= index
  items_selected = prompt("Please make a selection from menu: ")
  break if items_selected == index
  break if items_selected == 8
    quantity = prompt("How many bags?: ")
    subtotal += quantity * coffee[items_selected]["price"].to_f
    puts subtotal
    coffee[items_selected]["counter"] = coffee[items_selected]["counter"].to_f + quantity
    cost_of_goods += quantity * coffee[items_selected]["cost"].to_f
end
 
 
if items_selected <= index
  item_1_total = coffee[1]["counter"].to_f * coffee[1]["price"].to_f
  item_2_total = coffee[2]["counter"].to_f * coffee[2]["price"].to_f
  item_3_total = coffee[3]["counter"].to_f * coffee[3]["price"].to_f
  item_4_total = coffee[4]["counter"].to_f * coffee[4]["price"].to_f
  item_5_total = coffee[5]["counter"].to_f * coffee[5]["price"].to_f
  item_6_total = coffee[6]["counter"].to_f * coffee[6]["price"].to_f
 
 
 
  # def bill_printer()
  #   coffee["counter"].reject("0")
  #   coffee.each do ||
  # end
 
  puts "=== Sale Complete ====", " "
  #refactor note: can I make a method here??
  puts "$#{item_1_total} - #{coffee[1]["counter"]} - #{coffee[1]["name"]}"
  puts "$#{item_2_total} - #{coffee[2]["counter"]} - #{coffee[2]["name"]}"
  puts "$#{item_3_total} - #{coffee[3]["counter"]} - #{coffee[3]["name"]}"
  puts "$#{item_4_total} - #{coffee[4]["counter"]} - #{coffee[4]["name"]}"
  puts "$#{item_5_total} - #{coffee[5]["counter"]} - #{coffee[5]["name"]}"
  puts "$#{item_6_total} - #{coffee[6]["counter"]} - #{coffee[6]["name"]}"
 
  puts "Total: $#{subtotal}"
  puts "======================", " "
 
 
  amount_tend = 0
 
  until amount_tend >= subtotal
    amount_tend = prompt("Please enter amount tendered: ")
    puts "AMOUNT TOO LOW!!...please enter subtotal amount or higher!" if amount_tend < subtotal
  end
 
  change_due = amount_tend - subtotal
 
 
  puts "===Thank You!==="
  puts "Your total change due is: #{change_due}"
  puts Time.now.asctime
  puts"================="
 
 
  #tabular data = date,time,sum_items,gross_sales,cost_of_goods
  date = Time.new.strftime("%m/%d/%y")
  time = Time.new.strftime("%I:%M %p")
 
  sum_items = 0
  coffee.each do |key, value|
  sum_items += value["counter"].to_i
  end
 
 
  transaction = []
  transaction << date
  transaction << time
  transaction << sum_items
  transaction << subtotal
  transaction << cost_of_goods
 
 
  #push data in array to CSV
  CSV.open("transaction_history.csv", "a") do |row|
    row << transaction
 
  end
end
 
 
 
#read data into program and store as has
 
transaction_history = {}
trans_num = 1
 
CSV.foreach("transaction_history.csv", headers: true) do |row|
  transaction_history[trans_num] = row.to_hash
  trans_num += 1
end
 
 
 
if items_selected == 8
  transaction_history.each do |trans, values|
    puts "transaction #{trans}: #{values["date"]} #{values["time"]} #{values[sum_items]} #{values["gross_sales"]} #{values["cost_of_goods"]}"
  end
end
 
 
 
 
#while true  will loop this until valid date
puts "please enter valid date (mm/dd/yyyy) to veiw daily sales summary: "
 report_date = gets.chomp
 
 
# daily_summary = transaction_history.select {|key, value| value["date"] == report_date}