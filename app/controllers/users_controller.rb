class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def show
  authorize @user
  @orders = Order.where(user_id: @user.id)
  @products = Product.where(user_id: @user.id)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
