require 'twitter'

class PlayersController < ApplicationController

	def index
		@players = Player.all

		# @list_of_tweets = Tweet.new.list_tweets(@player.twitter_username)
	end

	def show
		@player = Player.find(params[:id])

		@tweets = Tweet.new.get_tweets(@player.twitter_username)

		@bad_tweets = Tweet.new.get_tweets(@player.twitter_username)

		# tweet.include?(bad_label).each do |word|
		# 	tweet.include?(word)
		# end
	end
end