class CartItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart, optional: true

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  
  def total_product
    product.price * quantity 
  end
end