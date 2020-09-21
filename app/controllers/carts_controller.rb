class CartsController < ApplicationController
    def index
      @cart = current_cart   
      @cart_items = @cart.cart_items
    end
    def create
        
    end
    private
    def cart_params
        
    end
    
end
