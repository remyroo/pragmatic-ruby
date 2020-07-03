# frozen_string_literal: true

require_relative 'player'

class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def play
    puts "There are #{@players.count} players in #{@title}:"
    @players.each { |p| puts p }
    @players.each do |p|
      p.blam
      p.blam
      p.w00t
      puts p
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  player1 = Player.new('alvin', 30)
  game = Game.new('Knuckleheads')
  game.add_player(player1)
  game.play
end
