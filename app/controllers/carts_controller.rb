class CartsController < ApplicationController
  skip_before_action :verify_authenticity_token
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
