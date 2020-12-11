class OrdersController < ApplicationController
    def index
        @orders = policy_scope(Request).order(created_at: :desc)
    end

    def create
        @product = Product.find(params[:product_id])
        @request = Request.new
        @request.product = @product
        @request.user = current_user
        @request.status = "To be Approved"
        if @request.save
            redirect_to orders_path
        else
            flash[:alert] = "Something went wrong"
        end
    end
end
