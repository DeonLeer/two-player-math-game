require './player.rb'
require './game.rb'

@player_one = Player.new("Player 1")
@player_two = Player.new("Player 2")
@game = Game.new(@player_one, @player_two)
@game.start

exit
