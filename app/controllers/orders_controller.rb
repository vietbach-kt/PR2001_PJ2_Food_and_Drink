class OrdersController < ApplicationController
    def index
        
    end
    def show
        
    end
    
    def new
        @order = Order.new 
    end
    def create
        
    end
    def destroy
    end
    private
    def order_params
        params.require(:order).permit :address, :phone_number, :payment, :user_id, 
         :cart_id
    end
    
end
