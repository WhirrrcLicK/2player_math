class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2

    def ask_question(name)
      puts "#{name}: What is the sum of #{@num1} and #{@num2}"
  end

    def check_answer(response)
      @answer === response
    end
  end
end