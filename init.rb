require_relative 'string'
require_relative 'item_container'
require_relative 'item'
require_relative 'virtual_item'
require_relative 'real_item'
require_relative 'antique_item'
require_relative 'cart'
require_relative 'order'


@items = []
@items << AntiqueItem.new(price: 101, weight: 101, name: 'car')
@items << RealItem.new(price: 100, weight: 101, name: 'kettle')
@items << RealItem.new(price: 100, weight: 10, name: 'dishwasher')

cart = Cart.new('mykola')
cart.add_item RealItem.new(price: 100, weight: 101, name: 'car')
cart.add_item RealItem.new(price: 100, weight: 200, name: 'car')
cart.add_item RealItem.new(price: 100, weight: 120, name: 'kettle')

# puts cart.all_cars
# puts cart.all_kettlesß

puts cart.kind_of?(Cart)
puts @items[0].kind_of?(Item)
puts @items[0].kind_of?(AntiqueItem)
puts @items[0].class == AntiqueItem
puts @items[0].class == Item
puts @items[0].respond_to?(:info)

puts @items[0].send(:price) #can call methods and private methods
puts @items[0].send(:tax)
puts @items[0].price

method_one = 'all_cars'
puts cart.send(method_one)