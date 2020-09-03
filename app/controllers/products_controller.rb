class ProductsController < ApplicationController
  before_action :value_category
  def index
    @products = Product.all
  end

  def show
    @product = @category.products.find params[:id]
  end
  private
  def value_category
    @category = Category.find_by params[:category_id]
  end
end
