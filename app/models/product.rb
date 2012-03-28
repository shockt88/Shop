class Product < ActiveRecord::Base
  
  belongs_to :brand
  has_many :reviews
  has_many :cart_items
  has_many :order_items
  
  
  def self.most_recent
    order("updated_at desc").limit(3)
  end
  
end
