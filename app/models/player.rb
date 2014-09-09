class Player < ActiveRecord::Base
	has_many :tweets
	belongs_to :position

end
