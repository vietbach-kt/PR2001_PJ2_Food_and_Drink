class Cart < ApplicationRecord
    has_many :cart_items
    has_many :products, through: :cart_items

    belongs_to :order, optional: true

    def total_amount
        cart_items.collect do |ci|
            ci.valid? ? (ci.quantity * ci.product&.price.to_i) :0
        end
    end
    
end