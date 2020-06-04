class OrdersController < ApplicationController
  def show
    @user = current_user
    @order = Order.find(params[:id])
    @myproducts = OrdersToProduct.where(order_id:@order.id)
    authorize @user
  end
end

# @ordersofuser = Order.where(user_id:@user.id)
# @ordersopen = []

# @ordersofuser.each do |order|
#   @ordersopen << order if order.status == 'open'
