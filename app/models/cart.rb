class Cart < ApplicationRecord

    enum status: {initial: 0, ordered: 1}

    has_many :cart_items
    has_many :products, through: :cart_items

    def total_amount
        cart_items.collect do |ci|
            ci.quantity * ci.product.price.to_i
        end
    end
    
end