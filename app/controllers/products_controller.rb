class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def show
        authorize @product
        @product = Product.find(params[:id])
    end

    def new
        authorize @product
        @product = Product.new
    end

    def create
        authorize @product
        @product = Product.new(product_params)
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
        @product = Product.find(params[:id])
    end

    def update
        authorize @product
        @product = Product.find(params[:id])
        if @product.update(product_params)
            redirect_to @product, notice: "Udated Succesfully" 
        else 
            render :edit
        end

    end

    def destroy
        authorize @product
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_url, notice: 'Product was successfully destroyed.'
    end

    private

    def product_params
        params.require(:product).permit(:name, :description, :size, :price)
    end
        
end
