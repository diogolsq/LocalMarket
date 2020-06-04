class OrdersToProductsController < ApplicationController

<<<<<<< HEAD
  def show
    @orderstoproduct = OrdersToProduct.find(params[:id])
=======
  def create

    open_order = current_user.orders.find_by(status: "open")
    open_order ||= current_user.orders.create(status: "open")

    @orders_to_product = OrdersToProduct.new(orders_to_product_params)
    @orders_to_product.unit_price = @orders_to_product.product.price
    @orders_to_product.order = open_order
    authorize @orders_to_product
    @orders_to_product.save

    redirect_to @orders_to_product.product, notice: "Succesfully added to cart"
  end

  def update
  end

  def destroy
  end

  private

  def orders_to_product_params
    params.require(:orders_to_product).permit(:quantity, :product_id)
>>>>>>> a8b697a6b30866b1fc6aafa7904db1348f32ebcb
  end

end
