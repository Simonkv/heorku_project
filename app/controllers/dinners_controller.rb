class DinnersController < ApplicationController
	def new

	end
	

	def create
	
		@dinner = Dinner.new(dinner_params)



		if @dinner.save

			redirect_to dinners_path
		else
			render 'new'
			
		end
	end

	def show
		@dinner = Dinner.find(params[:id])
	end

	def index

		@dinners = Dinner.all
		

	end


	private
		def dinner_params
			params.require(:dinner).permit(:title, :price, :ingredients)
		end
end
