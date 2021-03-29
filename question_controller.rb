class Question
  attr_reader :question, :answer
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def generate_question
    @answer = @num1 + @num2
    @question = "What is the total of #{@num1} plus #{@num2}? "
  end
end

# q1 = Question.new

# puts q1.generate_question
# puts q1.answer