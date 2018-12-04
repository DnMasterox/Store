class Item

  def initialize(options = {})
    @price = options[:price]
    @name = options[:name]
  end

  attr_reader :price, :weight, :name
  attr_writer :price

  def info
    yield(price)
    yield(name)
  end
end