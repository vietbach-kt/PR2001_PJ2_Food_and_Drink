class HomepagesController < ApplicationController
  def home
    @categories = Category.all
    @products = Product.limit(8)
    @carts = current_cart
    if signed_in?
      @addresses = current_user.addresses
    end
  end
end