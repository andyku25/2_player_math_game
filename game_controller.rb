require "./question_controller"

class Game
  attr_accessor :current_player, :current_question, :player_1, :player_2
  def initialize(p1, p2)
    @continue_game = true
    @current_player = nil
    @player_1 = p1
    @player_2 = p2
  end

  def loop_questions
    while @continue_game
      @current_player = @player_1
      # puts @player_1.name
      # puts @player_2.name
      puts @current_player.name
      @continue_game = false
    end
  end
end

# game = Game.new

# game.current_player = "Andrew"

# puts game.current_player