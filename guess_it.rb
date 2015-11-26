require_relative 'random_player'
require_relative 'smart_player'
require_relative 'sequential_player'

player_array = Array.new(3)
player_array[0] = RandomPlayer.new('Nik')
player_array[1] = SmartPlayer.new('Vsev')
player_array[2] = SequentialPlayer.new('Loh')


player_array.each {|i|
  i.guess
  puts " The number of guesses it took you, #{i.name} = #{i.incr_guess(i.attempts)}"}

