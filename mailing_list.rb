require 'pry'

salutations = ['Mr.', 'Mrs.', 'Mr.', 'Dr.', 'Ms.']
first_names = ['John', 'Jane', 'Sam', 'Louise', 'Kyle']
last_names = ['Dillinger', 'Cook', 'Livingston', 'Levinger', 'Merlotte']
addresses = ['33 Foolish Lane, Boston MA 02210', '45 Cottage Way, Dartmouth, MA 02342', "54 Sally's Court, Bridgewater, MA 02324", '4534 Broadway, Boston, MA 02110', '4231 Cynthia Drive, Raynham, MA 02767']

people = []


5.times do |i|

  person = {
    salutation: salutations[i],
    first_name: first_names[i],
    last_name: last_names[i],
    address: addresses[i]
  }

    people << person

end
#binding.pry

people.each do |contact|
  puts "#{contact[:salutation]} #{contact[:first_name]} #{contact[:last_name]}\n#{contact[:address]}"
end 
