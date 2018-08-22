require './Player.rb'

 class Question

  def initialize(player)
    @currenPlayer = player

    @number1 = Random.rand(1..50)
    @number2 = Random.rand(1..50)
    @answer = @number1 + @number2

    puts "#{player.name}'s turn: What is #{@number1} + #{@number2}?"
    @input = gets.chomp

  end

  def check_answer

    if @input === @answer
      puts 'YES! You are correct'
    else
      puts 'Seriously? No!'
      @current_player.wrongAnswer

    end
  end
 end