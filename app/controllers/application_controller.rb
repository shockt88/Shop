class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :cart

  def require_login
    if session[:user_id].blank?
      redirect_to root_url, :notice => "You need to sign in first."
      return false
    end
    @user = User.find(session[:user_id])
  end
  
  def cart
    if session[:cart_id].present?
      Cart.find(session[:cart_id])
    else
      nil
    end
  end
  
end
