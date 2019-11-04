# EASY 

# Return the middle character of a string. Return the middle two characters 
# if the word is of even length, 
# e.g., middle_substring("middle") => "dd", 
# middle_substring("mid") => "i"
def middle_substring(str)
    # your code goes here
   
    if str.length%2 == 0
        str[(str.length/2)-1..(str.length/2)]
    else str[(str.length/2)]
    end
  end
  
  puts "1. Middle charachter of string abcde -- #{middle_substring("abcde")}"
  puts "1a. Middle charachter of string abcdef-- #{middle_substring("abcdef")}"
  puts " "

  # Return the number of vowels in a string.
  def num_vowels(str)
    vowels = ["a","e","i", "o","u"]
    count = 0
    # your code goes here
       
    #puts vowels.length
    str.split("").each do |ch|
      vowels.each do |vl|
        ch == vl ? count+=1: count+=0
      end
    end
    return count
  end
  puts "2. how many vowels in the string -- #{num_vowels("middla")}"
  
  # put string in an array with each element separated
  str = "beautiful"
  arr = []
    arr<<str.split("")
    puts "3. String to array for string -#{str} to be array- #{arr}"
  
  # MEDIUM 
  
  # Return the argument with all its lowercase characters removed.
  def destructive_uppercase(str)
    # your code goes here
    a=""
    arr =[]
    arr << str.split("")
    puts str
    
    arr.each do |x|
      #puts x.upcase
      #x == x.upcase ? a = a + x : a
    end
    return a
  end

  puts "4. All lowercase removed from string : #{destructive_uppercase("WhaToDO")}"

  
  # Write a method that returns an array containing 
  # all the elements of the argument array in reverse order.
  def my_reverse(arr)
    # your code goes here
    arr.reverse
  end
  vowels = [2,3,4,1]
  puts "5. reverse the array #{my_reverse(vowels)}"
  
  # HARD 
  
  # Write your own version of the join method. 
  # Assume this method will always receive a 
  # separator as the second argument.
  def my_join(arr, separator)
    # your code goes here
    arr * separator
  end
  
  puts "6. my join method: #{my_join(vowels,"hi")}"

  # Return an array of integers from 1 to 30 (inclusive), except for each 
  # multiple of 3 replace the integer with "fizz", for each multiple of 5 
  # replace the integer with "buzz", and for each multiple of both 3 and 5, 
  # replace the integer with "fizzbuzz".
  def fizzbuzz
    arr = []
    # your code goes here
    30.times do |x|
      
      if (x+1)%3 == 0 and (x+1)%5 == 0 
        arr<<"FIZZBUZZ"
      elsif (x+1)%3 == 0 
          arr<<"fizz"
      elsif (x+1)%5 == 0 
           arr <<"buzz"
      else 
        puts x
        arr<<x+1
      end
    end
    return arr

    
  end
  puts "Array: #{fizzbuzz}"
  
  #require_relative "test.rb"
  