class Round
  attr_reader :current_round

  def initialize
    @current_round = 1
  end

  def increment_round
    @current_round = @current_round + 1
  end

end

round = Round.new

puts round.current_round

round.increment_round

puts round.current_round