class Order < ApplicationRecord
    has_one :carts ,dependent: :destroy
    belongs_to :user
    enum payment: {ship_code: 0, online: 1}
    def save_price_to_order
        
    end
end