require 'rubygems'
require 'twitter'

class Tweet < ActiveRecord::Base
	belongs_to :player
	belongs_to :keyword

	after_initialize(:init)

	def init
		@twitter = Twitter::REST::Client.new do |config|
		  	config.consumer_key = 'qbtzI1FaLrni4TKVgVOA4ul0v'
		  	config.consumer_secret = 'Z701H6d4kCz8iCT21hjPU4THJQHtte39eOYywgYWsNGOZdOvCT'
		  	config.access_token = '208181050-siYKfP8zNdg2Hw5iltzK7j5CXlrjAb6jpMfAIFjR'
		  	config.access_token_secret = 'vdJbL5M9KTUFqSBfnyvbCRq8QC2udXRhrrHindS1D3yIH'
		end
	end

	def get_tweets
		tweets = []
		@twitter.search("to:jmanziel2 party", :result_type => "recent").take(5).each do |tweet|
  			tweets << tweet.text
  		end
  		tweets.join('............................')
	end
end