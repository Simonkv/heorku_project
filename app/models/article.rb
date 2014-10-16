class Article < ActiveRecord::Base
  attr_accessible :text, :title
  validates :title, presence: true,
                    length: { minimum: 2 }
end
