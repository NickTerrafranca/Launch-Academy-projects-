#Given an amount due, the system will report what change is due after the customer pays a whole dollar amount closest to the amount due.
#The system will supply the number of quarters, dimes, nickels, and pennies that should be issued for the change due.
require 'pry'

def prompt(input)
  puts input
end
prompt ''
prompt "What is the total due?"
amount_due = gets.chomp.to_f
prompt "Total due is $#{amount_due}"
prompt "================================================"
prompt "Please specify amount tenderd:"
input = gets.chomp.to_i
amount_paid = input
change_due = amount_paid - amount_due
change_due = change_due.round(2)
puts "The change due is $#{change_due}."
#seporates whole number from decimel numbers
dollars = change_due.to_i
coins = change_due - dollars
#converts coins change decimal number to whole integer
coins_whole_num = coins * 100
coins_whole_num = coins_whole_num.round
#specifies number of quarters
quarters_due = coins_whole_num / 25
#specifies number of dimes
coins_for_dimes = coins_whole_num  - (quarters_due * 25)
dimes_due = coins_for_dimes / 10
#specifies number of nickels
coins_for_nickels = coins_for_dimes - (dimes_due * 10)
nickles_due = coins_for_nickels / 5
#specifies number of pennies
coins_for_pennies = coins_for_nickels - (nickles_due * 5)
pennies_due = coins_for_pennies / 1
puts "Cashier please provide customer with: #{dollars} dollar(s), #{quarters_due} quarter(s), #{dimes_due} dime(s), #{nickles_due} nickel(s) and #{pennies_due} pennie(s)."
