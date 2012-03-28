class CartItemsController < ApplicationController
  
  def destroy
    item = CartItem.find(params[:id])
    item.destroy
    redirect_to root_url
  end
  
  def create
    if session[:cart_id].present?
      cart = Cart.find(session[:cart_id])
    else
      cart = Cart.create
      session[:cart_id] = cart.id
    end
    
    cart.cart_items.create :product_id => params[:product_id]
    
    # sum = 0
    # cart.cart_items.each do |item|
    #   sum += item.product.price
    # end
    # cart.total = sum
    # cart.save
    
    redirect_to products_url, :notice => "Item Added to Cart"
  end
end