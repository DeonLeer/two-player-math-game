class Questions
  attr_accessor :num1, :num2, :question, :answer
  def question 
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @question = "What does #{@num1} plus #{num2} equal?"
    puts @question
    @answer = gets.chomp
    if answer.to_i == @num1 + @num2
      puts "Yes! You are correct."
      return true
    else 
      puts "Seriously? No!"
      return false
    end
  end
end





