class OrdersController < ApplicationController
  before_action :get_valid_to_order
  def new
    @order = Order.new
    @cart_items = current_cart.cart_items 
  end
  def show
    
  end
  
  def create
    unless current_cart.blank?
      @order = current_user.orders.build order_params
      @order.save_price_to_order = current_cart.total_amount
      @order.order_code = Order.generate_order_code
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
    params.require(:order).permit :address, :phone_number, :payments, :user_id,
    :cart_id
  end 
  def get_valid_to_order
    redirect_to products_path unless current_cart.present?
  end
  
end
