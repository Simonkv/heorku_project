class Shopping < ActiveRecord::Base
  attr_accessible :person, :price, :title
  	default_scope -> {order('created_at DESC')}

end


