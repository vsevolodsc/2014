require_relative 'random_player'
require_relative 'smart_player'

puts "\n Random Player Challenges the mighty Oracle !"
rand_player = RandomPlayer.new('Nik')
rand_player.guess
puts "\n Smart Player Challenges the mighty Oracle !"
smart_player = SmartPlayer.new('Vsev')
smart_player.guess