require_relative 'wallet'

class Player
	attr_accessor :name, :wallet#, :karma

	def initialize(name, amount)
		@wallet = Wallet.new(amount)
		@name = name
    # @karma = rand(100)
	end
end
