class OrdersToProductsController < ApplicationController

  def show
    @orderstoproducts = @OrdersToProducts.find(params[:id])
  end

end
