


module ShoppingHelper
	def hvem_skylder_hvem

		alle_simon = Shopping.where(person: 'Simon')
		pris_simon = alle_simon.sum(:price)
		
		alle_joachim = Shopping.where(person: 'Joachim')
		pris_joachim = alle_joachim.map(&:price).reduce(0, :+) || 0
		
			if (pris_joachim > pris_simon)
				hvem_skylder = "Simon"
				skylder = pris_joachim-pris_simon
			else
				hvem_skylder = "Joachim"
				skylder = pris_simon-pris_joachim
			end
		

		"#{hvem_skylder} skylder #{skylder} kr!"
	end
end
