class ShoppingController < ApplicationController

	def new

	end


	def create
	
		@shopping = Shopping.new(shopping_params)



		if @shopping.save

			redirect_to shopping_index_path
		else
			render 'new'
			
		end
	end

	def show
		@shopping = Shopping.find(params[:id])
	end

	def index



		@shopping = Shopping.all

		

	end
	private
		def shopping_params
			params.require(:shopping).permit(:title, :price, :person)
		end


end
