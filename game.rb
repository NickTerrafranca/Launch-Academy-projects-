NUMBER = 7
print "Guess a number between 1 and 10 :"


while true
  

  answer = gets.chomp.to_i 
  
  if answer == NUMBER
    puts "Congradulations! You win a prize!"
  break

  elsif answer > 10 || answer < 0
    print "Sorry, guess a number between 0 and 10 :"



  elsif answer < NUMBER
    print "Too low, try again: "
  

  else
    print "Too high, try again: "
  

  end
end
