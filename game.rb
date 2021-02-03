require './questions.rb'

class Game

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @current_player = @player_one
    @other_player = @player_two
  end

  def start
    puts "New Game Started!"
    turn
  end

  def turn 
    @question = Questions.new
    puts "--- NEW TURN ---"
    puts "#{@current_player.name}"
    if !@question.question
      @current_player.lose_life
      if @current_player.lives == 0
        puts "#{@other_player.name} wins with a score of #{@other_player.lives}"
        game_over
      else
        puts "#{@player_one.name}: #{@player_one.lives} VS #{@player_two.name}: #{@player_two.lives}"
        next_turn
      end
    else 
      puts "#{@player_one.name}: #{@player_one.lives} VS #{@player_two.name}: #{@player_two.lives}"
      next_turn
    end
  end

  def next_turn
    if @current_player == @player_one
      @current_player = @player_two
      @other_player = @player_one
    else 
      @current_player = @player_one
      @other_player = @player_two
    end
    turn
  end

  def game_over
    puts "bye"
  end
    
end