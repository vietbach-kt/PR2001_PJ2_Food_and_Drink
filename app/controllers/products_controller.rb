class ProductsController < ApplicationController
  before_action :value_category
  def index
    @products = Product.all
  end

  def show
    @product = @category.products.find params[:id]
    @comment = @product.comments.build
    @comments = @product.comments.reject{|i| i.id.blank?}
    @toppings = Topping.all
    @cart_item = @product.cart_items.find_by params[:cart_item_id]
  end
  private
  def value_category
    @category = Category.find (params[:category_id])
  end
end
