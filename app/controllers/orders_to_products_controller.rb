class OrdersToProductsController < ApplicationController

  def show
    @orderstoproduct = OrdersToProduct.find(params[:id])
  end

end
