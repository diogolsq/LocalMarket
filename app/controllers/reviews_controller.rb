class ReviewsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
    authorize @review
  end

 def create
    @review = Review.new(review_params)
    @product = Product.find(params[:product_id])
    @review.product = @product
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

private

  def review_params
    params.require(:review).permit(:description, :rating)
  end


  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@review.product)
  end
end
