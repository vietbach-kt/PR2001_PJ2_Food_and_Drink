class ProductsController < ApplicationController
  before_action :value_category
  def index
    @products = Product.all
  end

  def show
    @user = User.find_by params[:user_id] 
    @product = @category.products.find params[:id]
    @comments = @product.comments
    if signed_in?
      user_comment = current_user.comments.find_by(product_id: params[:id])
      @comment =
        if @user_rating.present?
          user_rating
        else
          current_user.comments.build(product_id: params[:id])
        end
    end
  end
  private
  def value_category
    @category = Category.find_by params[:category_id]
  end
end
