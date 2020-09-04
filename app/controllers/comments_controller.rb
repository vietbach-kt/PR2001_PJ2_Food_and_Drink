class CommentsController < ApplicationController
  before_action :get_id_product
  def create
    if signed_in? 
      @category = Category.find_by params[:category_id]
      @comment = @product.comments.build comment_params
      respond_to  do |format|  
        if @comment.save
          format.html { redirect_to category_product_path(@category, @product)}
          format.js
        else
          format.js
        end
      end 
    else
      redirect_to login_path
    end
  end
  def destroy  
  end
  private
  def get_id_product
    @product = Product.find_by params[:product_id]
  end
  def comment_params
    params.require(:comment).permit :content, :product_id, :user_id
  end
end