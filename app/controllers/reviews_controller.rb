class ReviewsController < ApplicationController

  def new
    @products = products.find(params[:products_id])
    @review = Review.new
  end

 def create
    @review = Review.new(review_params)
    @product = product.find(params[:product_id])
    @review.product = @product
    if @review.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

private

  def review_params
    params.require(:review).permit(:content)
  end


  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@review.product)
  end
end
