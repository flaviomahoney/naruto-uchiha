class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]
    def index
        @products = policy_scope(Product).order(created_at: :desc)
    end

    def show
        @user = current_user
        @review = Review.new
        @request = Request.new
        authorize @product
    end

    def new
        @product = Product.new
        authorize @product
    end

    def create
        @product = Product.new(product_params)
        authorize @product
        @product.user = current_user
        if @product.save
          flash[:success] = "Product successfully created"
          redirect_to @product
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end

    def edit
        authorize @product
    end

    def update
        authorize @product
        if @product.update(product_params)
            redirect_to @product, notice: "Udated Succesfully" 
        else 
            render :edit
        end

    end

    def destroy
        authorize @product
        @product.destroy
        redirect_to products_url, notice: 'Product was successfully destroyed.'
    end

    private

    def set_product
        @product = Product.find(params[:id])
    end

    def product_params
        params.require(:product).permit(:name, :description, :size, :price, :photo)
    end
        
end
