require_relative 'player_info'
require 'pry'

class Player
	attr_accessor :player

	def initialize
		@player = nil
	end

	def player_info(name, wallet)
		@player = Player_info.new(name, wallet)
	end

	def welcome_new_player
		"Welcome #{@player.name}, you have $#{@player.wallet} in your wallet."
	end

end
