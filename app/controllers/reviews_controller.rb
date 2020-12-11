class ReviewsController < ApplicationController
    def create
        @product = Product.find(params[:product_id])
        @review = Review.new(review_params)
        @review.product = @product
        @review.user = current_user
        authorize @review
        if @review.save
          redirect_to product_path(@product)
        else
          redirect_to product_path(@product)
          flash[:alert] = "You already have rated it"
        end
    end
    
    private
    
    def review_params
        params.require(:review).permit(:rate)
    end
end
