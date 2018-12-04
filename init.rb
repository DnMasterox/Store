require_relative 'item_container'
require_relative 'cart'
require_relative 'order'
require_relative 'item'
require_relative 'virtual_item'
require_relative 'real_item'

@items = []
@items << VirtualItem.new(price: 101, weight: 100, name: 'car')
@items << RealItem.new(price: 100, weight: 101, name: 'kettle')
@items << RealItem.new(price: 100, weight: 10, name: 'dishwasher')
