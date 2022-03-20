#main class to have the game logic and flow
require '../player.rb'
require '../board.rb'
require '../symbols.rb'

class Game
    attr_accessor :player_1, :player_2, :turn, :board
    include Symbols
    def initialize()
        @board = Board.new
        @player_1 = Player.new(' ', white_circle)
        @player_2 = Player.new(' ', blue_circle)
        @turn = 0
    end

    def check_input(input)
        if input =~ /['0'|'1'|'2'|'3'|'4'|'5'|'6']/
            return true
        else
            return false
        end
    end

    def player_turn
        if @turn % 2 == 0
            return player_1
        else
            return player_2
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
        puts "Player 1, What is your name?"
        @player_1.name = gets.chomp
        puts 'Player 2, What is your name?'
        @player_2.name = gets.chomp
    end

    



end