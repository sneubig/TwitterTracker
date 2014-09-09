require 'open-uri'


class Player < ActiveRecord::Base
	has_many :keywords

	def initialize
		@tweet = tweet
	end

	def tweets
		client.search("from:jmanziel2", :result_type => "recent").take(3).each do |tweet|
	 		tweet.text
		end
	end
end
