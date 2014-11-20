class Shopping < ActiveRecord::Base
  attr_accessible :person, :price, :title
  	default_scope -> {order('created_at DESC')}

end

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
