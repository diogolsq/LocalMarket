class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @products = Product.all
    if params[:query].present?
      @products = Product.where(name: params[:query])
    else
      @products = Product.all
    end
  end
end
