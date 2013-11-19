class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly     = 10  #  He's full.
    @stuff_in_intestine =  0  #  He doesn't need to go.

    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly     = 10  #  He's full.
    @stuff_in_intestine =  0  #  He doesn't need to go.

    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} does the potty dance..."
    end
  end

end

pet = Dragon.new 'Norbert'
pet.feed
pet.toss
pet.walk
pet.put_to_bed
pet.rock
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
Norbert is born. 
You feed Norbert. 
You toss Norbert up into the air. 
He giggles, which singes your eyebrows. 
You walk Norbert. 
You put Norbert to bed. 
Norbert snores, filling the room with smoke. 
Norbert snores, filling the room with smoke. 
Norbert snores, filling the room with smoke. 
Norbert wakes up slowly. 
You rock Norbert gently. 
He briefly dozes off... 
...but wakes when you stop. 
You put Norbert to bed. 
He wakes up suddenly! 
Norbert's stomach grumbles... 
You put Norbert to bed. 
He wakes up suddenly! 
Norbert's stomach grumbles... 
You put Norbert to bed. 
He wakes up suddenly! 

Norbert's stomach grumbles... 
Norbert does the potty dance... 
You put Norbert to bed. 
He wakes up suddenly! 
Norbert is starving! In desperation, he ate YOU! 
