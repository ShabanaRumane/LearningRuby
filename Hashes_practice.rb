

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
# write the each loop here. 
restaurant_menu.each do |item , price|
  restaurant_menu[item] = price + (price*0.1)
  end
  puts "Increase in price by 10% of the restaurant  menu #{restaurant_menu}"


  restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
puts "Keys for the hash table restaurant_menu #{restaurant_menu.keys}"

# your code here    
puts "chuck norris"
chuck_norris = Hash.new(45)
chuck_norris = Hash[:punch, 99, :kick, 98, :stops_bullets_with_hands, true]
p chuck_norris
p "here"
value =  chuck_norris[:punch]
p value

normal = Hash.new
was_not_there = normal[:zig]
#puts "Wasn't there:"
p was_not_there
p normal

usually_brown = Hash.new("brown")
pretending_to_be_there = usually_brown[:zig]
puts "Pretending to be there:"
p pretending_to_be_there
p usually_brown

=begin
puts "new line"
grid = Hash.new(0)
 puts "grid #{grid}"
5.times do |x|
    4.times do |y|
      grid[[x, y]] = x*y
  end
end
puts "new grid #{grid}"
diff = grid[[2, 4]] - grid[[2,1]]

puts diff # output the value of diff


def artax
    a = [:punch, 0]
    b = [:kick, 72]
    c = [:stops_bullets_with_hands, false]
    key_value_pairs = [a,b,c]
    Hash[key_value_pairs]
  end
  p artax

  puts 1.class
puts "".class
puts [].class

=end

def artax
  a = [:punch, 0]
  b = [:kick, 72]
  c = [:stops_bullets_with_hands, false]
  key_value_pairs = [a,b,c]
  my_hash=Hash[key_value_pairs]
  puts my_hash[:kick]
  my_hash[:kick] = 88
  Hash[key_value_pairs]
  my_hash

end
puts artax