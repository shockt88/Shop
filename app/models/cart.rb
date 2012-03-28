class Cart < ActiveRecord::Base
  
  has_many :cart_items

  # def total
  #   cart_items.inject(0) do |total, item| 
  #     total + item.product.price
  #   end
  # 
  #   # sum = 0
  #   # cart_items.each do |item|
  #   #   sum += item.product.price
  #   # end
  #   # sum
  # end
  
end
