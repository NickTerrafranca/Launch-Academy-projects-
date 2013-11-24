#Note that I have not yet worked out the extra challange part commented out at bottom
#require 'pry'
train_schedule = {train_1: 2, 
                  train_2: 5, 
                  train_3: 7.5, 
                  train_4: 8.5, 
                  train_5: 9, 
                  train_6: 10, 
                  train_7: 11.5, 
                  train_8: 13.5, 
                  train_9: 14.5,
                  train_10: 17, 
                  train_11: 18, 
                  train_12: 19, 
                  train_13: 24}
print "What time fo you want to leave: "
input = gets.chomp.to_f
train_schedule.each do |train, time|
      if input <= time
            puts "You want to take #{train} that leaves at #{time}."
            break
      end
end
