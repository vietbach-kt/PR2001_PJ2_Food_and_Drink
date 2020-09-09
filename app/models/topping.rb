class Topping < ApplicationRecord
  belongs_to :product

  enum type: {food: 0, drink: 1}

  validates :name, presence: true
  validates :price, presence: true
end