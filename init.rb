require_relative 'store_application'

StoreApplication.config do |app|
  app.name = 'My Store'
  app.environment = :production
  app.admin do |admin|
    admin.email = 'admin@mystore.com'
    admin.login = 'admin'
    admin.send_info_emails_on :mondays
  end
end

# puts StoreApplication.new == StoreApplication.new
p StoreApplication.environment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login

@items = []
@items << AntiqueItem.new('car', price: 101, weight: 101)
@items << RealItem.new(price: 100, weight: 101, name: 'kettle')
@items << RealItem.new(price: 100, weight: 10, name: 'dishwasher')

cart = Cart.new('mykola')
cart.add_item RealItem.new(price: 100, weight: 101, name: 'car')
cart.add_item RealItem.new(price: 100, weight: 200, name: 'car')
cart.add_item RealItem.new(price: 100, weight: 120, name: 'kettle')

# puts cart.all_cars
# puts cart.all_kettles

# puts cart.kind_of?(Cart)
# puts @items[0].kind_of?(Item)
# puts @items[0].kind_of?(AntiqueItem)
# puts @items[0].class == AntiqueItem
# puts @items[0].class == Item
# puts @items[0].respond_to?(:info)

# puts @items[0].send(:price) #can call methods and private methods
# puts @items[0].send(:tax)
# puts @items[0].price

method_one = 'all_cars'
# puts cart.send(method_one)