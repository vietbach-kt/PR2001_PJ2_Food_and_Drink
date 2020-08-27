class Admin::ProductsController < Admin::BaseController
  before_action :get_category, except: [:index] 
  before_action :get_product, only: [:show , :edit, :update, :destroy]
  def index
    @category = Category.find_by params[:category_id]
    @products = Product.all
  end

  def show; end

  def new
    @product = @category.products.build
  end

  def create
    @product = @category.products.build product_params
    @product.images.attach(params[:product][:images])
    if @product.save
      flash[:success] = 'create successful product'
      redirect_to admin_root_url
    else
      flash[:alert] = 'Product could not be created!'
      render :new
    end
  end

  def edit; end
  

  def update
    if @product.update(product_params)
      flash[:success] = 'Update successfully'
      redirect_to admin_products_path
    else
      flash[:danger] = 'Product could not be updated'
      render :edit
    end
  end
  def destroy
    @product.destroy
    respond_to do |format|
      format.html {redirect_to admin_product_url, notice: 'Product was successfully destroyed.' }
      format.js
    end
  end
  private
  def product_params
    params.require(:product).permit :name_product, :information, 
     :old_price ,:price, :kind, :category_id, images: []
  end

  def get_product
    @product = Product.find(params[:id])
  end
  def get_category
    @category = Category.find params[:category_id]
  end

end
