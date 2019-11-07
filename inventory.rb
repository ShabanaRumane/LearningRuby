class Location
    attr_accessor :location_name, :location_addr
    def initialize(name,addr)
        @location_name = name
        @location_addr = addr
        @inventory = Hash.new(0)
        @prod_rec = Hash.new()
    end
    def add_prod_rec(prd,cp,sp,cat)
        @prod_rec[prd] = Product.new({:common_name=>prd, :cost_price=>cp, :sell_price=>sp, :category=>cat})
    end
    def add_product_qty(prod,count)
        #@inventory[prod] +=count
        if @prod_rec[prod] == nil 
            puts "Add the prod #{prod} to the product list first"
        else
            @inventory[prod] +=count
        end
    end
    
    def get_inventory(prod)
        @inventory[prod]
    end
    
    def show_inventory
        @inventory
        #@inventory.each do |key, value|
        #    puts "#{key} - #{value}"
        #end
        #return nil
    end
    
    def prod_exists?(prod)
        if @prod_rec[prod] == nil
            false
        else
            true
        end
    end

    def move_inventory_to(to_loc,prod,qty)
        if @prod_rec[prod] != nil and to_loc.prod_exists?(prod) 
            if @inventory[prod] > qty+2
                @inventory[prod] -=qty
                to_loc.add_product_qty(prod,qty)            
            else 
                puts "Not enough quantity of #{prod} in #{@location_name} to move"
            end
        else
            puts "*********Product does not exist to move*********" 
        end
    end
end
class Product
    attr_accessor :common_name, :cost_price, :sell_price, :category
    def initialize(shanubaby)
        @common_name = shanubaby[:common_name]
        @cost_price = shanubaby[:cost_price]
        @sell_price = shanubaby[:sell_price]
        @category = shanubaby[:category]
    end
    #def get_prod_rec
     #   @prod_rec = 
    #end

end

=begin
p1 = Product.new({:common_name=>"Shirt", :cost_price =>10, :sell_price=>15,:category=>"Garments",:aisle => "L1"})
#p2 = Product.new("Shirt",10,10,"Garments")
p2 = Product.new({:common_name=>"Pants", :cost_price =>20, :sell_price=>25,:category=>"Garments",:aisle => "L1"})
#p2 = Product.new("Shirt",10,10,"Garments")
=end 


l1 = Location.new("basement","myhouse")
l1.add_prod_rec("Shirt", 10, 15,"Garments")
l1.add_prod_rec("Pants", 20, 25,"Garments")
l1.add_prod_rec("Jacket", 18, 23,"Garments")
l1.add_prod_rec("Cap", 18, 23,"Garments")

#puts "#{p1.common_name} belongs to the category #{p1.category} with Cost price to be #{p1.cost_price} that should be sold at #{p1.sell_price} "

l1.add_product_qty("Shirt",10)
l1.add_product_qty("Shirt",1000)
l1.add_product_qty("Pants",8)
l1.add_product_qty("Jacket",222)
l1.add_product_qty("Jacket",9)
l1.add_product_qty("Jacket",90)
l1.add_product_qty("Cap",9)
puts "i am here"
puts "Inventory in #{l1.location_name} is: #{l1.show_inventory}"
l2 = Location.new("warehouse","170 Simonston Blvd")
l2.add_prod_rec("Shirt", 10, 15,"Garments")
l2.add_prod_rec("Pants", 20, 25,"Garments")
l2.add_prod_rec("Jacket", 18, 23,"Garments")
l2.add_product_qty("Shirt",1000)
l2.add_product_qty("Pants",8)
l2.add_product_qty("Jacket",222)
puts "Inventory in #{l2.location_name} is: #{l2.show_inventory}"
l1.move_inventory_to(l2,"Shirt",1500)
puts "Inventory in #{l1.location_name} is: #{l1.show_inventory}"
puts "Inventory in #{l2.location_name} is: #{l2.show_inventory}"