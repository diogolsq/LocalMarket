class OrdersToProductsController < ApplicationController

  def create

    open_order = current_user.orders.find_by(status: "open")
    open_order ||= current_user.orders.create(status: "open")

    new_order = OrdersToProduct.new(orders_to_product_params)
    new_order.unit_price = new_order.product.price
    new_order.order = open_order

    new_order.save

    redirect_to new_order.product, notice: "Succesfully added to cart"
  end

  def update
  end

  def destroy
  end

  private

  def orders_to_product_params
    params.require(:orders_to_product).permit(:quantity, :product_id)
  end

end
