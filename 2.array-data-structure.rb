# EASY

# Write a method that returns a boolean indicating whether an array is in
# sorted order. Use the equality operator (==), which returns a boolean
# indicating whether its operands are equal, e.g., 2 == 2 => true, 
# ["cat", "dog"] == ["dog", "cat"] => false
def in_order?(arr)
    # your code goes here
    ordered_arr = []
    ordered_arr = arr.sort
    arr == ordered_arr ? "array is sorted" : "array is not sorted"
  end
  
  a = [3,4,2,1,2,3,4,5,9,0]
  puts "1. check if two arrays are sorted --- #{in_order?(a)}"
  puts " "
  
  # MEDIUM
  
  # Write a method that returns the range of its argument (an array of 
  # integers).
  def range(arr)
    # your code goes here
    arr.min.to_s + " to " + arr.max.to_s
  end
  puts "2. Range of number in an array (min - max) --- #{range(a)}"
  puts " "
  
  # HARD 
  
  # Write a method that returns an array of the digits of a non-negative 
  # integer in descending order and as strings, e.g., descending_digits(4291) 
  # #=> ["9", "4", "2", "1"]
  def descending_digits(int)
    # your code goes here
    int.to_s.split("").sort.reverse 
    # empty delimimter to splits

  end
  puts "3. integer into string array in descending ---  #{descending_digits(4352)}"
  #puts "check if two arrays are sorted --- #{in_order?(a)}"
  puts " "
  
  # Write a method that converts an array of ten integers into a phone 
  # number in the format "(123) 456-7890".
  def to_phone_number(arr)
    # your code goes here
    #s = "(" + arr[0..2].to_s + ")"
    #s = arr[0..2]
    #arr.map {|i| i.to_s}
    #s = "(  #{arr[0..2]} )"
    s = ""
    arr[0..2].each { |x| s = s + x.to_s}
    s = "(" + s + ") "
    arr[3..5].each { |x| s = s + x.to_s}
    s = s + "-"
    arr[6..9].each { |x| s = s + x.to_s}
    
    return s

  end
  
  puts "4. converting digits to phone number b-- #{to_phone_number(a)}"
  puts " " 

  # Write a method that returns the range of a string of comma-separated 
  # integers, e.g., str_range("4,1,8") #=> 7
  def str_range(str)
    # your code goes here
    total = 0
    str.each { |x| total = total + x}
    return total 
  end

  puts "5: adding integer elements of the array #{a}-- #{str_range(a)}"
  
 # require_relative "test.rb"