require_relative 'oracle'
require_relative 'player'

class SmartPlayer < Player
  def initialize (name)
    @name = name
  end

  def guess
    oracle = Oracle.new
    @start_range = 0
    @end_range = 100
    player_guess = rand(@start_range..@end_range)
    track_guess(player_guess, oracle.generated_number)
    while check(oracle, player_guess)
      if oracle.generated_number > player_guess
        @start_range = player_guess
            puts "New range (#{@start_range}..#{@end_range})"
        player_guess = rand(@start_range..@end_range)

      elsif oracle.generated_number < player_guess
        @end_range = player_guess
            puts "New range (#{@start_range}..#{@end_range})"
        player_guess = rand(@start_range..@end_range)
      end
    end
    victory(oracle.generated_number)
  end
end