require 'rspec'
require_relative '../app/item'
require_relative '../app/virtual_item'

describe Item do

  before(:each) do
    @item = Item.new('kettle', price: 200)
  end

  before(:all) do
  end

  after(:each) {}
  after(:all) {}


  it 'calculates price according to a special formula' do
    expect @item.price == 232
    @item.price = 300
  end

  it 'returns info about an object' do
    expect @item.to_s == 'kettle:232.0'
  end

  it 'calculates tax' do
    expect(@item.send(:tax)).not_to be_nil # check private method
  end
end