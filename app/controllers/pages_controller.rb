class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @products = Product.all

    if params[:query].present?
      @products = Product.global_search(params[:query])
    else
      @products = Product.all
    end

    @products.each do |product|
      @productreviews = Review.where(product_id: product.id)
      @sum = 0
      @number = 0
      @productreview = 0
      unless @productreviews.empty?
        @productreviews.each do |review|
          @sum += review.rating
          @number += 1
        end
        @productreview = @sum / @number
      end
      product.review = @productreview
    end

  end
end
