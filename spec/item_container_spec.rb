require 'rspec'
require_relative '../app/item'
require_relative '../app/virtual_item'
require_relative '../app/item_container'

class ItemBox
  include ItemContainer

  def initialize
    @items = []
  end
end

describe ItemContainer do

  before(:each) do
    @box = ItemBox.new
  end

  it 'add items into the container' do
    item1 = Item.new('kettle', price: 200)
    item2 = Item.new('kettle', price: 300)
    @box.add_item(item1)
    @box.add_item(item2)
    expect(@box.items).to include(item1, item2)
  end

end