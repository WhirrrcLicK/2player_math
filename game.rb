class Game 
  def initialize(name)
    @name = name
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end

  def start_game
    puts "Welcome #{@player_1.name} and #{@player_2.name} to the simple math death arena of doom!"
    turn
  end

  def show_score
  puts "#{@player_1.name} has #{@player_1.lives}/3 lives left. #{@player_2.name} has #{@player_2.lives}/3 lives left."
  end
  
  def check_score
    if @player_1.dead
      winner(@player_2)
    elsif @player_2.dead
      winner(@player_1)
    end
  end

    def winner(player)
      puts "#{player.name} wins with #{player.lives}/3 lives left!"
      puts "--- GAME OVER ---"
      puts "Goodbye!"
      exit(0)
    end

    def turn
      @player_1.next_question
      check_score
      @player_2.next_question
      check_score
      show_score
      puts '--- NEW TURN ---'
      turn
    end
end