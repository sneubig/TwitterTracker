class Keyword < ActiveRecord::Base
	belongs_to :player
	has_many :keywords

end