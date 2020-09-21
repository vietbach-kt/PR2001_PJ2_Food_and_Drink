class OrdersController < ApplicationController
  def index
  
  end
  def show
      
  end
  
  def new
    @order = Order.new
    @cart_items = current_cart.cart_items 
  end
  def create
    unless current_cart.blank?
      @order = current_user.orders.build order_params
      if @order.save
        session[:cart_id] = nil
        flash[:success] = 'User buyed success'
        redirect_to root_path
      else
        flash[:danger] = 'User buyed fail'
        render :new
      end
    else
      flash[:danger] = "You need to buy something!"
      redirect_to products_path
    end
  end
  def destroy
  end
  private
  def order_params
    params.require(:order).permit :address, :phone_number, :payment, :user_id, 
    :cart_id
  end 
end
