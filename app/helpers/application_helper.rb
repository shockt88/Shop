module ApplicationHelper

  def administrator?
    user = User.find_by_id(session[:user_id])
    return user.present? && user.administrator?
  end
  
  def cart
    if session[:cart_id].present?
      Cart.find(session[:cart_id])
    else
      nil
    end
  end
  
end
