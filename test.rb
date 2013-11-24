def playback(text)
print text 
input = gets.chomp
puts "You said: #{input}."
end

playback "What do you want to say?"