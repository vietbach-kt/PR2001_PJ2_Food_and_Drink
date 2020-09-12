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
  end
  private
  def value_category
    @category = Category.find_by(params[:category_id])
  end
end
