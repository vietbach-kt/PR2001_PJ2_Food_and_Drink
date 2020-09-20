class CartsController < ApplicationController
    def index
      @cart = current_cart
      @cart_items = CartItem.all
      @product = Product.find_by params[:product_id]
    end
    def create
        
    end
    private
    def cart_params
        
    end
    
end
