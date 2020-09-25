class Cart < ApplicationRecord
  has_many :cart_items
  has_many :products, through: :cart_items
  
  has_one :order


  def caculate_total_amount
    cart_items.collect do |ci|
      ci.valid? ? ci.quantity * ci.save_price_to_cart_item : 0
    end
  end
end