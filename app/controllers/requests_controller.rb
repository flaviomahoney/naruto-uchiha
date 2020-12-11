class RequestsController < ApplicationController
    
    def index
        @requests = policy_scope(Request).order(created_at: :desc)
    end

    def create
        @product = Product.find(params[:product_id])
        @request = Request.new
        @request.product = @product
        @request.user = current_user
        @request.status = "To be Approved"
        if @progress.save
            redirect_to requests_path
        else
            flash[:alert] = "Something went wrong"
        end        
    end

end
