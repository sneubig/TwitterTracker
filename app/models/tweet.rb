class Tweet < ActiveRecord::Base
	belongs_to :player
	belongs_to :keyword
end