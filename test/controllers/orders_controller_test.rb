class OrdersController < ApplicationController

  def show
    @user = current_user
    @order = Order.find(params[:id])
    if @order.status == 'open'
      @myproducts = OrdersToProduct.where(order_id:@order.id)
    end
    authorize @user
  end

  def update
    @user = current_user
    @order = Order.find(params[:id])
    authorize @order
    redirect_to user_path(current_user) if @order.update(order_params)
  end

  private

  def order_params
    params.require(:order).permit(:status)
  end
end
