class Cart < ApplicationRecord
  has_many :cart_items
  has_many :products, through: :cart_items


  has_one :order

  def caculate_total_amount
    cart_items.sum :total_product
  end
end