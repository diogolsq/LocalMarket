class OrdersToProductsController < ApplicationController

  def show?
    @orders = Orders.all
    authorize @users
  end

end
