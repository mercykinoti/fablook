class ProductsController < ApplicationController
	before_action :set_product, only: [:show, :upvote, :downvote]

	def index
		if params[:search]
			@products = PgSearch.multisearch(params[:search])
		elsif params[:category_id]
			@products = Category.find_by(id: params[:category_id]).products
		else
			@products = Product.order("created_at DESC")
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

	def upvote
		authenticate_user!
		@product.upvote_by current_user
		redirect_to product_path
	end

	def downvote
		authenticate_user!
		@product.downvote_by current_user
		redirect_to product_path
	end

	private

	def set_product
		@product = Product.find(params[:id])
	end

	def product_params
		params.require(:product).permit(:name, :price, :description, :image, :category)
	end
end
