require_relative 'player'
require_relative 'oracle'


class SequentialPlayer < Player
  attr_reader :attempts, :name
  def initialize(name)
    @name = name
  end

  def guess
    oracle = Oracle.new
    player_guess = 0
    @attempts = 0
    enter_message(@name)
    track_guess(player_guess, oracle.generated_number)
    while check(oracle, player_guess)
      incr_guess(@attempts)
      player_guess += 1
      puts "\n Silly mortal ! You will not defeat the mighty Oracle!"
    end
    victory(oracle.generated_number)
  end
end