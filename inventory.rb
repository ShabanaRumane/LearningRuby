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
        @inventory.each do |key, value|
            puts "#{key} - #{value}"
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

p1 = Product.new({:common_name=>"Shirt", :cost_price =>10, :sell_price=>15,:category=>"Garments",:aisle => "L1"})
#p2 = Product.new("Shirt",10,10,"Garments")
p2 = Product.new({:common_name=>"Pants", :cost_price =>20, :sell_price=>25,:category=>"Garments",:aisle => "L1"})
#p2 = Product.new("Shirt",10,10,"Garments")

l1 = Location.new("basement","myhouse")
l1.add_prod_rec("Shirt", 10, 15,"Garments")
l1.add_prod_rec("Pants", 20, 25,"Garments")
l1.add_prod_rec("Jacket", 18, 23,"Garments")

puts "#{p1.common_name} belongs to the category #{p1.category} with Cost price to be #{p1.cost_price} that should be sold at #{p1.sell_price} "


#l1.add_product_qty(p1,10)
#l1.add_product_qty(p1,100)

l1.add_product_qty("Shirt",10)
l1.add_product_qty("Shirt",1000)
l1.add_product_qty("Pant",8)
l1.add_product_qty("Jacket",222)
l1.add_product_qty("Jacket",9)
l1.add_product_qty("Jacket",90)
l1.add_product_qty("Cap",9)
#puts l1.get_inventory(p1)
#puts l1.get_inventory(p2)
puts "Shirts are #{l1.get_inventory("Shirt")} "
l1.show_inventory
