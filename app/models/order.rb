class Order < ApplicationRecord
    belongs_to :cart, optional: true, dependent: :destroy

    belongs_to :user
    
    enum status: [ :confirm, :cancel, :delivered ]
    enum payment: {ship_code: 0, online: 1}

    class << self
      def generate_order_code
        code = SecureRandom.urlsafe_base64(10)
        
        while Order.find_by(order_code: code)
          code = SecureRandom.urlsafe_base64(10)
        end
        
        code
      end
    end
end