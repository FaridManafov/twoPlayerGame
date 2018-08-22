require './Question.rb'
require './Player.rb'

  class Game
  attr_accessor :playerOne, :playerTwo

  def initialize
    @players = []
    @playerOne = Player.new(setPlayerName('Player 1'))
    @playerTwo = Player.new(setPlayerName('Player 2'))
    @players << @playerOne
    @players << @playerTwo

    @currentPlayer = @playerOne
  end

  def setPlayerName(player)
    puts "Enter your name #{player}"
    name = gets.chomp

    puts "Welcome, #{name}!"
    return name
  end

  def next_player(player)
    if player === @playerOne
      @currentPlayer = @playerTwo
    else @currentPlayer = @playerOne
    end

  end

  def summary
    puts "#{@playerOne.name}: #{@playerOne.score} VS #{@playerTwo.name}: #{@playerTwo.score}"
  end

  def scoreboard
    @players.each do |player|
      if player.score === 0

        if player === @playerOne
          winner = @playerTwo
        else winner = @playerOne

        end

        return puts "#{winner.name} wins this round!"
       end
    end

    summary
    puts "New round start!"

  end

  def play
    while (@playerOne.score > 0 && @playerTwo.score > 0)
      q = Question.new(@currentPlayer)
      q.check_answer
      scoreboard
      next_player(@currentPlayer)
    end

  end

 end 