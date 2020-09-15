require_relative './player'

class Game

  def initalize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)

    def question(player)
      num1 = rand(1...20)
      num2 = rand(1...20)
      sum = num1 + num2
    
      puts "What is #{num1} + #{num2}?"
      
      answer = gets.chomp
    
      if answer == sum
        puts "Great! You're not an idiot!"
      else
        puts "Sorry, you're an idiot."
        player.lives -= 1
      end
    end



end



  



class Player
  attr_accessor :name, :lives

end

def play
  until (game_over?) do

  end

  winner

end



class Question

end
