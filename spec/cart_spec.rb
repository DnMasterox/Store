require 'rspec'
require_relative '../app/item'
require_relative '../app/antique_item'
require_relative '../app/virtual_item'
require_relative '../app/item_container'
require_relative '../app/cart'

describe Cart do
  describe 'managing items' do
    it 'adds items into the cart' do
      cart = Cart.new('Mykola')
      item1 = Item.new('kettle', price: 200)
      item2 = Item.new('car', price: 200)
      cart.add_items(item1, item2)
      expect(cart.items).to include(item1, item2)
    end
    it 'removes items from itself' do
      pending # pending test
    end
  end

  it 'counts items in itself' # pending test
  it 'places order using all the items that were added into the cart' # pending test
  it 'clears itself off the items after an order is placed' # pending test
end