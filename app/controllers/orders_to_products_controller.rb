class OrdersToProductsController < ApplicationController

  def show
    @orders = @OrdersToProducts(params[:id])
  end

end
