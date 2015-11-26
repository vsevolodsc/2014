class Player

  def check(oracle, player_guess)
  oracle.is_it?(player_guess) == false
  end

  def victory(oracle_number)
    puts "You finally managed to guess my number #{oracle_number}! Next time it won't be that easy..."
  end

  def track_guess(player_guess, oracle_number)
    puts "Player guessed #{player_guess}. Oracle guessed #{oracle_number}"
  end
end