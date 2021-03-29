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
    @current_player = @player_1
    while @continue_game
      question = Question.new
      question.generate_question
      puts "#{@current_player.name}: #{question.question} "

      user_answer = gets.chomp.to_i
      
      is_right?(user_answer, question.answer, @current_player)
      
      puts "#{@player_1.name}: #{@player_1.lives_remaining}/3 VS. #{@player_2.name}: #{@player_2.lives_remaining}/3"
      @continue_game = continue_game?(@current_player)
      change_player
      if @player_1.lives_remaining == 0
        puts "#{@player_2.name} wins with a score of #{@player_2.lives_remaining}/3"
      elsif @player_2.lives_remaining == 0
        puts "#{@player_1.name} wins with a score of #{@player_1.lives_remaining}/3"
      end
    end
  end

  private
  def change_player 
    if @current_player == @player_1
      @current_player = @player_2
    else
      @current_player = @player_1
    end
  end

  def continue_game?(player)
    if player.lives_remaining <= 0
      puts "----- Game Over -----"
      return false
    end
    puts "----- Next Question -----"
    true
  end

  def is_right?(answer, solution, player)
    if answer != solution
      player.answer_wrong
      puts "Do you math?"
    else
      puts "You got it right!"
    end
  end
end
