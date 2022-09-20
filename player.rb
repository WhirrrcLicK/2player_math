class Player
  attr_reader :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def dead
    @lives === 0 
  end

  def next_question
    next_question = Question.new
    next_question.ask_question(name)
    print '> '
    @userinput = $stdin.gets.chomp
    if next_question.check_answer (@userinput.to_i)
      puts 'Correct!'
    else
      lose_life
      puts "Wrong answer. You have #{@lives} lives left."
    end
  end
end