a = [1,2,3,4,5]
puts [1,2,3,4,5].push("hi")
puts [1,2,3]<<"eoto"

puts  " "
puts [1,2,3].map {|x| x*3}

puts " "
names = ['rock', 'paper', 'scissors', 'lizard', 'spock']
# your code here
puts names.select {|d| d.length >= 5}

puts " "
puts a - [3]
puts "This will give only the deleted value"
puts a.delete(3)

b = [1,2,3,4,5,6,7,8,9]
r = b.select {|i| i%2 == 0 }
puts "output: #{b-r} --------"
puts b-r

puts "array looping"
def array_copy(source)
    destination = []
    # your code
    destination = source.select {|x| x <= 4}
    puts destination
    return destination
  end

  puts b
  puts array_copy(b)

  

  def array_copy_each(source)
    destination = []
    # your code
    source.each do |i|
        destination << i if i<=4
    end
    return destination
  end

  puts "with each #{array_copy_each(b)}"

  puts "non duplicate values in array"

 c = [1,2,3,3,4,5,5,6]
  def non_duplicated_values(values)
    # Write your code here
    result = []
    values.each do |i|
      result << i if values.count(i) ==1 
    end
    return result
  end
  
  def non_duplicated_values_findall(values)
    # Write your code here
    values.findall {|x| values.count(x) == 1}
  end
  
  puts non_duplicated_values(c)

  puts "with find all #{non_duplicated_values(c)}"

 in_array = ['Ruby','Rails','C42'] 
 
  def length_finder(input_array)
    out_array = []
    out_array = input_array.map {|x| x.length}
  end

  puts "Length of string array #{in_array} is #{length_finder(in_array)}"

  puts "hereeeeeeeee"

  number = 7
count = 0

alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

loop do
  break if count > number
  puts alphabet[count]
  count+=1
end