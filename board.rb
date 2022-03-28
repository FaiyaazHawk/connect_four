require_relative 'symbols.rb'

#has the board class, display board. win condition functions
class Board
include Symbols
attr_accessor :grid

    def initialize
        @grid = Array.new(6) {Array.new(7){empty_circle}}
    end

    def display_board
        pp @grid
    end

    def update_board(row, column, symbol)
        @grid[row][column] = symbol
    end

    def find_row(column)
        row = 5 #traversing from lowest row upwards.
        until row == 0 || @grid[row][column] == 0
            row -= 1
        end
        row 
    end

    def full_column?(column)
        @grid[0][column] != 0
    end

    def check_vertical?(symbol)
        for row in 0..2 do
            for column in 0..6 do
                next if @grid[row][column] != symbol
                return true if @grid[row][column] == symbol && @grid[row+1][column] == symbol && @grid[row+2][column] == symbol && @grid[row+3][column] == symbol
            end
        end
    end

    def check_horizontal?(symbol)
        for row in 0..5 do
            for column in 0..3 do
                next if @grid[row][column] != symbol
                return true if @grid[row][column] == symbol && @grid[row][column+1] == symbol && @grid[row][column+2] == symbol && @grid[row][column+3] == symbol
            end
        end
            
    end

    

    def check_diagonal_up?(symbol)
        for row in 3..5 do 
            for j in 0..3 do 
               next if @grid[row][column] != symbol
               return true if @grid[row][column] == symbol && @grid[row-1][column+1] == symbol && @grid[row-2][column+2] == symbol && @grid[row-3][column+3] == symbol
            end
        end    
    end

    def check_diagonal_down?(symbol)
        for row in 0..2 do 
            for column in 0..3 do
                next if @grid[row][column] != symbol
                return true if @grid[row][column] == symbol && @grid[row+1][column+1] == symbol && @grid[row+2][column+2] == symbol && @grid[row+3][column+3] == symbol
            end
        end
    end

    def check_diagonal?(symbol)
        if check_diagonal_up?(symbol) || check_diagonal_down?(symbol)
            return true
        end
    end

end

