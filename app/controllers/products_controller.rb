class ProductsController < ApplicationController

	def index
		@products = Product.filter(params.slice(:category, :price, :productname)).order("created_at DESC")
	end
	def show
		@product = Product.find(params[:id])
	end
	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to @product
		else
			render "new"
		end
	end

	private

	def product_params
		params.require(:product).permit(:name, :price, :description, :image, :category)
	end
end
