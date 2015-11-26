require_relative 'player'
require_relative 'oracle'
class RandomPlayer < Player
  attr_reader :attempts, :name
  def initialize(name)
    @name = name
  end

  def guess
    oracle = Oracle.new
    player_guess = rand(1..100)
    @attempts = 0
    enter_message(@name)
    track_guess(player_guess, oracle.generated_number)
    while check(oracle, player_guess)
      incr_guess(@attempts)
        puts "#{@name} guessed #{player_guess} and failed to beat the mighty Oracle !"
        player_guess = rand(1..100)
    end
    victory(oracle.generated_number)
  end
end
