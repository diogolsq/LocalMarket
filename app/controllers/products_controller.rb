class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new

  end

  def create
    @product = Product.new(params[:product])
    @product.save

    redirect_to product_path(@product)
  end

  private

  def product_params
    params.require(:product).permit( :name, :description, :stock)
  end

end
