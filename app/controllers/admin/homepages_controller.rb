class Admin::HomepagesController < Admin::BaseController
  def index
    @data = Product.group(:old_price).count
    
  end
end
