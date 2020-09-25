class HomepagesController < ApplicationController
  def home
    @categories = Category.all
    @products = Product.all
    @carts = current_cart
  end
end