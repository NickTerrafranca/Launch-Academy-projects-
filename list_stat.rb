#Write a program that reports the average score, the lowest score, and the highest score. 



array = [75, 100, 85, 65, 84, 87, 95]
sum = 0
array.each { |a| sum += a }
puts "This is the sum of the score"
puts sum  
puts "this is the highest score"
puts array.max
puts "this is the lowest score"
puts array.min
puts "this is the average score"
len = array.length
average = sum.to_f / len 
puts average


#======================================================================================
