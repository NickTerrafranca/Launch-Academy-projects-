require 'pry'

train_schedule = {train1: 2, 
                  train2: 5, 
                  train3: 7.5, 
                  train4: 8.5, 
                  train5: 9, 
                  train6: 10, 
                  train7: 11.5, 
                  train8: 13.5, 
                  train9: 14.5,
                  train10: 17, 
                  train11: 18, 
                  train12: 19, 
                  train13: 24}

train_numbers = []
train_times = []

print "What time fo you want to leave?"
input_time_leaving = gets.chomp.to_f
train_schedule.each do |key , value|
  #last_train = train_schedule.last
 if input_time_leaving < value
  train_numbers << key
  train_times << value
  
  end

end
#binding.pry
puts "You want to take #{train_numbers.first} that departs at #{train_times.first}."
#if input_time_leaving == last_train
    #puts "song"
  #end