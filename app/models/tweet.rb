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

	def get_tweets(username)
		great_tweets = []
		bad_tweets = []
		good_label = ["family", "kids", "mom", "sponsor", "charity", "wife", "practice", "sleep", "weight room", "team", "fans", "girlfriend"]
		bad_label = ["beer", "hangover", "club", "party", "vegas", "drugs", "tired", "bieber", "shots", "injury", "bar", "arrest", "boys"]

		@twitter.search("from:@#{username}", :result_type => "mixed").take(5).each do |tweet|
			# puts tweet.text
			# tweet_words = tweet.text.split(" ")
			# good = tweet_words.find {|word| good_label.include?(word)}
			# bad = tweet_words.find { |word| bad_label.include?(word)}
			# great_tweets << tweet.text if good
			# bad_tweets << tweet.text if bad
			great_tweets << tweet.text
		end
			great_tweets.join('<br><br>')
			# bad_tweets.join('<br><br>')
	end

	# def self.find_good_keyword(input1, input2)
	# 	@intersection = tweet & good_label
	# end	
			
			# if tweet_words.include?(good_label)
				# good_tweets << tweet.text
			# end
			# good_tweets << tweet.text + good
			
		

			# if tweet.include?(good_label)
			# if find_bad == nil
			# 	tweets << tweet.text + "SUCCESS!"
			# elsif find_bad != nil
			# 	good_tweets << tweet.text + "DANGER!"
			# else
			# 	great_tweets << tweet
			# end
  	# 	end
  	# 	tweets.join('<br><br>')


	# def get_tweets(username)
	# 	bad_tweets = []
	# 	good_label = ["family"]
	# 	#good_label = ["family", "kids", "mom", "sponsor", "charity", "wife", "practice", "sleep", "weight room", "team", "fans", "girlfriend"]
	# 	bad_label = ["beer", "hangover", "club", "party", "vegas", "drugs", "tired", "bieber", "shots", "injury", "bar", "arrest"]

	# 	@twitter.search("from:#{username}", :result_type => "mixed").take(5).each do |tweet|
	# 		if bad_tweets.include?(bad_label).each do |word|
	# 			word
	# 		end

	# 		end
	# 		bad_tweets << tweet.text
 #  		end
 #  		bad_tweets.join('<br><br>')
	# end

	# def find_bad(input)

	# bad_label = ["beer", "hangover", "club", "party", "vegas", "drugs", "tired", "bieber", "shots", "injury", "bar", "arrest", "boys"]

	# 	has_bad = [] 
	# 	bad_label.each do |bad_word|
	# 		if bad_label.include?(bad_word)
	# 			has_bad << bad_word
	# 		end
	# 	end
	# end

	# def list_tweets(username)
	# 	list_of_tweets = []
	# 	@twitter.search("@#{username}", :result_type => "recent").take(10).each do |tweet|
	# 		list_of_tweets << tweet.text
	# 	end
	# 	list_of_tweets.join('<br>')
	# end

end