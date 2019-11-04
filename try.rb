class Rectangle
    def initialize(length, breadth)
      @length = length
      @breadth = breadth
    end
  
    def perimeter
      2 * (@length + @breadth)
    end
  end
  
  # Create a class Square here
  class Square < Rectangle
    def initialize(side)
      @length = @breadth = side
    end
  end

  puts Square.new(5).perimeter

  class MyArray < Array 
    def map
      'in soviet russia...'
    end
  end
  puts Array.new.map
  puts MyArray.new.map

  class Animal
    def move
      "I can move"
    end
  end
  
  class Bird < Animal
    def move
      super + " by flying"
    end
  end
  
  class Human < Animal
    def move
      super + "by walking"
    end
  end
  
  class Penguin < Bird
    def move
      super + "and by walking"
    end
  end
  # Your code here
  puts Animal.new.move
  puts Bird.new.move
  puts Human.new.move
  puts Penguin.new.move

  class Phone
    attr_reader :ring_tone
  
    def initialize(ring_tone = "brrring brrring")
      @ring_tone = ring_tone
    end
  
    def incoming_call
      puts ring_tone
    end
  end
  
  class LandlinePhone < Phone
    def incoming_call
      super
      @line_busy = true
    end
  
    def end_call
      @line_busy = false
    end
  end
  
  class SmartPhone < Phone
    def initialize
      super("Marimba")
    end
  
    def incoming_call
      puts ring_tone unless silenced?
    end
  
    def silenced?
      false # this could be dynamic
    end
  end
  
  your_phone = LandlinePhone.new # so oldschool
  your_phone.incoming_call

  regx = "\$[\d,]+"
  contracts_arr = ["Hughes Missile Systems Company, Tucson, Arizona, is being awarded a $7,311,983 modification to $1,233,000 a firm fixed price contract",
  
  "Hughes Missile Systems Company, Tucson, Arizona, is being awarded a $211,983 modification to $100,000 a firm fixed price contract"]

  contracts_arr.each do |contract|
    mtch = contract.match(/\$[\d,]*/)
    puts mtch
 end
 
 #=> $7,311,983
 #=> $6,952,821