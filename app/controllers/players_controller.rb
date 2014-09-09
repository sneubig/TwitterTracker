require 'twitter'

class PlayersController < ApplicationController

	def index
		@players = Player.all
	end

	def show
		@player = Player.find(params[:id])
		@manziel_tweets = Tweet.new.get_tweets
	end

end