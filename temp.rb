puts [1,2,3,4,5].push("hi")

puts [1, 2, 3, 4, 5].map { |i| i * 3 }

a = [3,4,2,1,2,3,4,5]
puts "new array"
for i in a
    puts i
end

def in_order?(arr)
    # your code goes here
    ordered_arr = []
    ordered_arr = arr.sort

  end
  puts "new array #{in_order?(a)}"


  arr = [1,2,3,4,5]
  brr = arr.map{|x| -x}
  puts "Brr is #{brr}"
  puts "arr is #{arr}"
  
  puts arr
  puts arr.join("")   #=>   1, 2, 3, 4, 5   
  puts brr.join(", ") #=> -1, -2, -3, -4, -5


  puts "trying select method"
  names = ["Gail", "Kat", "Andra", "Derek", "Alison", "Christine"]
names = names.select {|name| name.downcase.include? 'a'}
puts names.inspect

puts Float.instance_methods.count
puts (Float.instance_methods - Object.instance_methods).count
puts (
  Float.instance_methods - 
  Object.instance_methods - 
  Numeric.instance_methods
).count

def is_ancestor?(klass, subclass)
  # your code here
  current_class = subclass
  puts current_class
  while  current_class != nil do
    current_class = subclass.superclass
    puts "Subclass: #{subclass} and superclass = #{current_class}"
    subclass = current_class
  end
end
is_ancestor?(BasicObject, Float)