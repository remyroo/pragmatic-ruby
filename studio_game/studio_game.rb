# frozen_string_literal: true

require_relative 'game'

player1 = Player.new('moe')
player2 = Player.new('larry', 60)
player3 = Player.new('curly', 125)

game = Game.new('Knuckleheads')
game.add_player(player1)
game.add_player(player2)
game.add_player(player3)
game.play
