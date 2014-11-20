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
		
		@alle_simon = Shopping.where(person: 'Simon')
		@pris_simon = @alle_simon.map(&:price).reduce(:+)
		
		@alle_joachim = Shopping.where(person: 'Joachim')
		@pris_joachim = @alle_joachim.map(&:price).reduce(:+)

		if (@pris_joachim > @pris_simon)
			@hvem_skylder = "Simon"
			@skylder = @pris_joachim-@pris_simon
		else
			@hvem_skylder = "Joachim"
			@skylder = @pris_simon-@pris_joachim
		end



		@shopping = Shopping.all

		

	end
	private
		def shopping_params
			params.require(:shopping).permit(:title, :price, :person)
		end


end
