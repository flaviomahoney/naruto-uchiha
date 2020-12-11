class RequestsController < ApplicationController
    
    def index
        @request = Request.all
    end

    def create
        @product = Product.find(params[:product_id])
        @request = Request.new
        @request.user = current_user
        @request.status = "On hold"
    end
    
end
