class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def show
    authorize @user
    @orders = Order.where(user_id: @user.id)
    @products = Product.where(user_id: @user.id)

    @markers = [{
      lat: @user.latitude,
      lng: @user.longitude
    }]
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
