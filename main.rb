require "./player.rb"
require "./game.rb"

player1 = Player.new("Mike")
player2 = Player.new("John")

game1 = Game.new(player1, player2)
game1.play_game
