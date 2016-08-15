require_relative 'wallet'

class Player
	attr_accessor :name, :wallet#, :karma

	def initialize(name, amount)
		@name = name
		@wallet = Wallet.new(amount)
    # @karma = rand(100)
	end
end
