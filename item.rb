

class Item
  attr_reader :name, :catagory, :imported, :price
  attr_accessor :price
  @@exempt_item = ["Food", "Medical products", "Books"]
  def initialize(name,price,catagory,imported = false)
   @name     = name
   @price    = price
   @catagory = catagory
   @imported = imported
  end
  def sales_tax
      total_rate = 0
    if self.imported
      total_rate += 0.05
    end
    unless @@exempt_item.include?(self.catagory)
      total_rate += 0.1
    end
      total_tax = self.price * total_rate
  end
  def total_cost
    @price + self.sales_tax
  end
end
