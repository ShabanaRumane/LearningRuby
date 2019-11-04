l = lambda do |string|
    if string == "try"
      return "There's no such thing" 
    else
      return "Do or do not."
    end
  end
  puts l.call("trys")

  l = lambda { "Do or do not" }
    puts l.call

    puts "increments passed value to lambda by 1"
    Increment = lambda {|num| num +1 } # your lambda between the braces
    puts Increment.call(5)