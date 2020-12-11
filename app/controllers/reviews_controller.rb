class ReviewsController < ApplicationController
    def create
        @product = Product.find(params[:product_id])
        @review = Review.new(review_params)
        authorize @review
        @review.user = current_user
        @review.product = @product
        if @review.save
          redirect_to product_path(@product)
        else
          render 'products/show', notice: "You already rated this product"
        end
    end
    
    private
    
    def review_params
        params.require(:review).permit(:rate)
    end
end
