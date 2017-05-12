class StoresController < ApplicationController
	def index
		@stores = Store.all
	end

	def show
		@store = Song.find(params[:id])
	end
	def new
		@store = Song.new
	end

	def create
		@store = Store.new(store_params)
		if @store.save
			redirect_to @store
		else
			render "new"
		end
	end
	def edit
		@store = Store.find(params[:id])
	end
	def update
		@store = Store.find(params[:id])

		@store.update(store_params)

		redirect_to @store
	end

	def destroy
		@store = Store.find(params[:id])
		@store.destroy
		redirect_to store_path
	end

	private

	def store_params
		params.require(:store).permit(:name, :website, :location)
	end
end
