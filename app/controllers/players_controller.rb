require 'twitter'

class PlayersController < ApplicationController

	def index
		@players = Player.all

		# @list_of_tweets = Tweet.new.list_tweets(@player.twitter_username)
	end

	def show
		@player = Player.find(params[:id])

		@bad_tweets = Tweet.new.get_tweets(@player.twitter_username)


		# @good_tweets = Tweet.new.get_tweets(@player.twitter_username)

	end

end