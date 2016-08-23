require_relative 'item'

 class Reciept
  attr_reader :list_item

  def initialize()
      @list_item = []
      @total_taxes = 0
  end
  def add_item(item)
    @list_item << item
    @total_taxes += item.sales_tax
  end

  def print_item
    @list_item.each do |itm|
      puts "1 #{itm.name} at: #{itm.total_cost}"
    end
  end
  def total_taxes
    puts "Sales Taxes: #{@total_taxes} "
   end
  def total
     total = 0
     @list_item.each do |item|
       total += item.total_cost
  end
     puts "Total: #{total}"
  end

end
choclates = Item.new("Choclate", 30 , "food", false)
perfume = Item.new("imported bottle of perfume", 50, "cosmetics", true)
reciept= Reciept.new
 reciept.add_item(perfume)
 reciept.add_item(choclates)
 reciept.print_item
 reciept.total_taxes
 reciept.total

#   @sales_tax   = 0
#   @total_value = 0
# end
# def sales_taxcd
# #  sales_tax = 0
#   if(@imported == false) && (@catagory == 'books' || @catagpry = 'food' || @catagory == 'medical_products')
#     @sales_tax = 0
#   elsif (@imported == false) && (@catagory == other)
#     @sales_tax = @price * 0.10
#   else
#     @sales_tax = @price * 0.10 * 0.05
#   end
#   @@sales_tax += @sales_tax
#  end
#
#  def total_value
#     @total_value = @price + @sales_tax
#     @@total +=  @total_value
#  end
#
# end
# reciept = Reciept.new()
# secret = Item.new("Secret",14,"books", false)
#   puts secret.sales_tax
#   puts secret.total_value
