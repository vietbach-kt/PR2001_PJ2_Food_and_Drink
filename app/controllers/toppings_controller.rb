class ToppingsController < ApplicationController
  def index
    @toppings = Topping.all
  end

  def new
    
  end

  def create
    @topping = Topping.new
  end

  def edit
  end

  def update
    
  end

  def destroy
    
  end
  private
  def  topping_params
    
  end
end
