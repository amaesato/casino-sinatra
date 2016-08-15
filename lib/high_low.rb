class HighLow
	attr_reader :mult, :game_money, :name, :min, :game_bet
	# should initialize take a player?
	def initialize
		@mult = 1.1
    @name = 'High Low'
    @min = 1
    @game_money = $player.wallet.amount #game_money
    @game_bet = 0
	end

	def init_rand_num
    @number = rand(1..20)
    @num_array = (1..20).to_a
    @number2 = @num_array.sample.to_i
  end


end
