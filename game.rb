
# frozen_string_literal: true

# main class to have the game logic and flow
require '../player.rb'
require '../board.rb'
require '../symbols.rb'



class Game
  attr_accessor :player_1, :player_2, :turn, :board

  include Symbols
  def initialize
    @board = Board.new
    @player_1 = Player.new(' ', one)
    @player_2 = Player.new(' ', two)
    @turn = 0
  end

  def check_input(input)
    if input =~ /['0'|'1'|'2'|'3'|'4'|'5'|'6']/
      true
    else
      false
    end
  end

  def player_turn
    if @turn.even?
      player_1
    else
      player_2
    end
  end


  def introductions
    puts <<-INTRO
        Hello!
        Let's Play connect 4.
        The object of the game is to take turns dropping tiles in a 7 by 6 board and to win
        by having 4 tiles of the same color align either diagonally or orthogonally.
        Press any key to continue:

    INTRO
    gets.chomp
  end


  def get_player_names
    puts 'Player 1, What is your name?'
    @player_1.name = gets.chomp
    puts 'Player 2, What is your name?'
    @player_2.name = gets.chomp
  end


  def get_player_names
    puts 'Player 1, What is your name?'
    @player_1.name = gets.chomp
    puts 'Player 2, What is your name?'
    @player_2.name = gets.chomp
  end

  def play
    introductions
    get_player_names
    until @turn == 42
      player = player_turn
      @board.display_board
      player_input(player)
      break if winner?(player)

      @turn += 1
    end
    final_message
  end

  def player_input(player)
    puts "Please select between 0-6 #{player.name}"
    input = gets.chomp.to_i
    input = gets.chomp.to_i until check_input(input) || !board.full_column?(input)
    board.update_board(board.find_row(input), input, player.symbol)
  end

  def winner?(player)
    if board.check_horizontal?(player.symbol) || board.check_vertical?(player.symbol) || board.check_diagonal?(player.symbol)
      true
    else
      false
    end
  end

  def final_message
    board.display_board
    if @turn == 42
      puts 'Its a Tie!!!'
    elsif winner?(@player_1)
      puts "Congrats #{@player_1.name}! You Win!"
    elsif winner?(@player_2)
      puts "Congrats #{@player_2.name}! You Win!"
    end
  end

end

g = Game.new
g.play


