



class Slots
  attr_accessor :wallet , :name
  def initialize
    @wallet = $player.wallet.amount
    @name = $player.name

  end

  def spin
    @slot_spin = ['cherry', 'bar', "7"]
    spin_result = Array.new
    3.times do
      spin_result << @slot_spin.sample
    end

    $player.wallet.amount = @wallet
  end

end
