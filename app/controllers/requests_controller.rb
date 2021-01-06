class RequestsController < ApplicationController
    
    def index
        @requests = policy_scope(Request).order(created_at: :desc)
    end

    def create
        @request = Request.new
        authorize @request
        @product = Product.find(params[:product_id])
        @request.product = @product
        @request.user = current_user
        @request.status = "Pending Approval"
        if @request.save
            redirect_to products_path
        else
            flash[:alert] = "Something went wrong"
        end
    end

end
