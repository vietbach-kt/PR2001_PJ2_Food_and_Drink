class HomepagesController < ApplicationController
  def home
    @categories = Category.all
    @category = Category.find_by params[:category_id]
    @products = Product.all.limit_product
  end
end
