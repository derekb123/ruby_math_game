require_relative './player'
require_relative './question'

class Game
  include Question

  attr_accessor :player1, :player2, :players

  def initialize
    @player1 = Player.new("player1")
    @player2 = Player.new("player2")
    @players = [@player1, @player2].shuffle
  end

  def play

    puts @player1

    until (self.player1.lives < 1 || self.player2.lives < 1) do

      puts "----- NEW TURN -----"
      cur_player = self.players[0]

      question?(cur_player)

      puts "P1: #{self.player1.lives}/3 vs P2: #{self.player2.lives}/3"

      if cur_player.lives < 1
        puts "#{self.players[1].name} wins with a score of #{self.players[1].lives}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
        return
      end

      self.players.rotate!()

      puts players

    end
  end
end

my_game = Game.new()

my_game.play

#Set up Players (Print "player1 ready etc")
#Pick which player starts and run a turn
#ask question and "get" answer
#update score/ lives if needed
#check if game over
#report status
#switch player turn
#start loop over