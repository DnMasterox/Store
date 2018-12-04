module ItemContainer

  def self.min_price
    100
  end

  def add_item(item)
    unless item.price < self.class.min_price
      @items.push item
    end
  end

  def remove_item(item)
    @items.pop
  end

  def validate
    @items.each {|item| puts "Item has no price" if item.price.nil?}
  end

  def delete_invalid_items
    @items.delete_if {|item| item.price.nil?}
  end

  def count_valid_items
    @items.count {|item| item.price}
  end


end