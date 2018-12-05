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
puts cart.all_cars
puts cart.all_kettles
