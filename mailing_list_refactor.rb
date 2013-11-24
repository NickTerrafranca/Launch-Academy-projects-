require 'pry'

salutations = ['Mr.', 'Mrs.', 'Mr.', 'Dr.', 'Ms.']
first_names = ['John', 'Jane', 'Sam', 'Louise', 'Kyle']
last_names = ['Dillinger', 'Cook', 'Livingston', 'Levinger', 'Merlotte']
addresses = ['33 Foolish Lane, Boston MA 02210', '45 Cottage Way, Dartmouth, MA 02342', "54 Sally's Court, Bridgewater, MA 02324", '4534 Broadway, Boston, MA 02110', '4231 Cynthia Drive, Raynham, MA 02767']

#binding.pry

address_list = []
salutations.each_with_index do |sal, index|
person = {}
person[:salutations] = salutations[index]
person[:firstname] = first_names[index]
person[:last_name] = last_names[index]
person[:address] = addresses[index]
 puts "#{contact[:salutation]} #{contact[:first_name]} #{contact[:last_name]}\n#{contact[:address]}"
 address_list << person


end