require 'rubygems'
require 'twitter'

class Tweet < ActiveRecord::Base
	belongs_to :player
	belongs_to :keyword

	after_initialize(:init)

	def init
		@twitter = Twitter::REST::Client.new do |config|
		  	config.consumer_key = ENV["TWITTER_CONSUMER_KEY"]
		  	config.consumer_secret = ENV["TWITTER_CONSUMER_SECRET"]
		  	config.access_token = ENV['TWITTER_ACCESS_TOKEN']
		  	config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
		end
	end

	def get_tweets(username)
		tweets = []
		bad_tweets = []
		good_label = ["family", "kids", "mom", "sponsor", "charity", "wife", "practice", "sleep", "weight room", "team", "fans", "girlfriend"]
		bad_label = ["beer", "hangover", "club", "party", "vegas", "drugs", "tired", "bieber", "shots", "injury", "bar", "arrest"]

		@twitter.search("@#{username} bieber OR tired OR club OR beer OR vegas", :result_type => "mixed").take(5).each do |tweet|
			# puts tweet.text
			# tweet_words = tweet.text.split(" ")
			# good = tweet_words.find {|word| good_label.include?(word)}
			# bad = tweet_words.find { |word| bad_label.include?(word)}
			# great_tweets << tweet.text if good
			# bad_tweets << tweet.text if bad
			tweets << tweet.text
		end
			tweets.join('<br><br>')
			# bad_tweets.join('<br><br>')
	end
end