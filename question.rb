class Question

  attr_reader :num1, :num2

  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
    @answer = @num1 + @num2
  end

  def evaluate(user_answer)
    if @answer.to_i == user_answer.to_i
      true
    end
  end


end
