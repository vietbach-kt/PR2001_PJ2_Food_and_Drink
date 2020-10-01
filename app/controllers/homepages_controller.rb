class HomepagesController < ApplicationController
  def home
    @categories = Category.all
    @products = Product.all
    @carts = current_cart
    @addresses = current_user.addresses
  end
end