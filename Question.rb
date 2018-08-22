require './Player.rb'

 class Question

  def initialize(player)
    @currenPlayer = player

    @number1 = Random.rand(1..50)
    @number2 = Random.rand(1..50)
    @answer = @number1 + @number2

    puts "#{player.name}'s turn, What is #{@number1} + #{@number2}?"
    @input = gets.chomp

  end

  def check_answer

    if @input === @answer
      puts 'Ding!'
    else
      puts 'Nope!'
      @current_player.wrongAnswer

    end
  end
 end