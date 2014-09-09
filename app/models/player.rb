class Player < ActiveRecord::Base
	has_many :tweets
	belongs_to :position


	def tweets
		client.search("from:jmanziel2", :result_type => "recent").take(3).each do |tweet|
	 		tweet.text
		end
	end
end
