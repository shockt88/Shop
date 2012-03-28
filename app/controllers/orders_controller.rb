class OrdersController < ApplicationController

  before_filter :require_login
  
  def index
    @orders = @user.orders
  end
  
  def show
    @order = Order.find(params[:id])
  end
  
  def create
    cart = Cart.find(session[:cart_id])
    order = Order.new
    
    order.user = @user
    
    cart.cart_items.each do |cart_item|
      order.order_items.build :product => cart_item.product
    end
    
    order.save
    session[:cart_id] = nil
    
    redirect_to order_url(order), :notice => "Thanks!"
    
  end
end