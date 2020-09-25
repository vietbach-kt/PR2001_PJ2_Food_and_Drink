class Admin::HomepagesController < Admin::BaseController
  def index
    @data = Product.group(:old_price).count
    @data_1 = User.group(:name).count
  end
end
