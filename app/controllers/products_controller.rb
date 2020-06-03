class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = policy_scope(Product)
  end

  def show
    @user = User.find(@product.user_id)
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    authorize @product
    @product.user_id = current_user.id
    if @product.save!
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @product.update(product_params)
    # redirect_to
  end

  def destroy
    @product.destroy product_path(@product)
  end

  private

  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end

  def product_params
    params.require(:product).permit(:name, :description, :stock, :price, :photo)
  end
end
