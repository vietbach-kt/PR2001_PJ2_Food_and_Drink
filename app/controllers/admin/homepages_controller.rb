class Admin::HomepagesController < Admin::BaseController
  def home
    @order_confirm = Order.comfirm
    @order_cancel = Order.cancel 
    
  end
  #statistical product that best saler
  def statistical
    
  end
end
