class Slots
  attr_accessor :wallet
  def initialize(player)
    @player = player
    @wallet = @player.wallet
  end
end
