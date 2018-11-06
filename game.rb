require './player'
require './question'


class Game

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @players = [@player1, @player2]
  end

  def should_continue
     !@players.any? {|player| player.lives == 0}
  end

  def start
    @players.cycle do |player|
      if should_continue
        question = Question.new
        puts '----- NEW TURN -----'
        puts "#{player.name}: What does #{question.num1} plus #{question.num2} equal?"
        if question.evaluate(gets.chomp)
          puts "#{player.name}: YES! You are correct."
          puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"

        else
          puts "#{player.name}: Seriously? NO!"
          player.lose_life
          puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        end
      else
        puts "#{player.name} wins with a score of #{player.lives}/3"
        puts '----- GAME OVER -----'
        puts "Good Bye!"
        break
      end
    end
  end
end



