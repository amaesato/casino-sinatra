class Player_info
	attr_accessor :name, :wallet, :wins, :losses

  def initialize(name, wallet)
  	@name = name
  	@wallet = wallet.to_f
  	@wins = 0
  	@losses = 0
  end
end
