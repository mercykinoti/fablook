class ProductsController < ApplicationController

	def index
		@products = Product.order("created_at DESC")

		if params[:search]
			@kofi = params[:search]
			# @products = Product.search_by_category(params[:search])
			@products = PgSearch.multisearch(params[:search])
		else
			@products = Product.all
		end
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
