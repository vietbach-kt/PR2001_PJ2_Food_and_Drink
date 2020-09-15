class CartItemsController < ApplicationController
  before_action :get_current_cart
  def create
    if signed_in?
      @cart_item = @cart.cart_items.build cart_item_params
      respond_to do |format|
        if @cart_item.save
          format.html{ redirect_to cart_path(current_cart.id)}
          format.js
        else
          format.html { redirect_to product_path(product_cart_params[:product_id])}
          format.js
        end
      end
    else
      redirect_to login_path
    end
  end
  def update
    @cart_item = CartItem.find(params[:id])
    respond_to do |format|
      if @pcart_item.update_attributes(cart_item_params)
        @cart = @cart_item.cart
        @cart_item = @cart_item.cart.cart_items
        format.html { redirect_to cart_path(current_cart.id), notice: 'Update product in cart successfull.' }
        format.js  
      else
        format.html { redirect_to cart_path(current_cart.id), notice: 'Update product in cart failed.' }
        format.js
      end
    end
  end
  def destroy
    @cart_item = @cart.cart_items.find(params[:id])
    respond_to do |format|
      if @cart_item.destroy
        @cart_item = current_cart.product_carts
        format.html { redirect_to cart_path(current_cart.id), notice: 'Update product in cart successfull.' }
        format.js  
      else
        format.html { redirect_to cart_path(current_cart.id), notice: 'Update product in cart failed.' }
        format.js
      end
    end
  end
  private
  def cart_item_params
      params.require(:cart_item).permit :quantity, :total_product, :save_price_to_cart, :product_id
  end
  def get_current_cart
    @cart = current_cart
  end
end
