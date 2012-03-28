class CartItem < ActiveRecord::Base
  
  belongs_to :cart
  belongs_to :product
  
  after_create :increase_cart_total
  after_destroy :decrease_cart_total
  
  def decrease_cart_total
    cart.total -= product.price
    cart.save
  end
  
  def increase_cart_total
    if cart.total.nil?
      cart.total = 0
    end
    
    cart.total += product.price
    cart.save
  end
  
end
