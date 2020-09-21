class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find params[:id]
    @comment = @product.comments.build
    @comments = @product.comments.reject{|i| i.id.blank?}
    @toppings = Topping.all
    @cart_item = @product.cart_items.build
  end
end
