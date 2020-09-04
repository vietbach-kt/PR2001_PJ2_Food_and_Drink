class ProductsController < ApplicationController
  before_action :value_category
  def index
    @products = Product.all
  end

  def show
    @user_comment = current_user
    @user = User.find_by params[:user_id] 
    @product = @category.products.find params[:id]
    @comment = @product.comments.build
    @comments = @product.comments
  end
  private
  def value_category
    @category = Category.find_by params[:category_id]
  end
end
