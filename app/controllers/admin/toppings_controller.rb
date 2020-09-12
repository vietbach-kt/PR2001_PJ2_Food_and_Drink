class Admin::ToppingsController < Admin::BaseController
   before_action :set_category, only: %i[show edit update destroy]
  def index
    @toppings = Topping.all
  end
  def create
    @new_topping = Topping.new
    @topping = Topping.new topping_params
    if @topping.save
      redirect_to admin_toppings_url
    end
  end
  def edit
  end

  def update
    
  end

  def destroy
  end

  private
  def topping_params
    params.require(:topping).permit :name , :type, :price 
  end
end
