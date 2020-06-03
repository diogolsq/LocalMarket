class OrdersToProductsController < ApplicationController

  def new
    @orders_to_product = OrdersToProducts.new
  end
end
