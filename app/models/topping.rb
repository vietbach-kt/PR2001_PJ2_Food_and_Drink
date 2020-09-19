
class Topping < ApplicationRecord
  belongs_to :cart_items
  belongs_to :product

  enum kind: {food: 0, drink: 1}

  validates :name, presence: true
  validates :price, presence: true
end