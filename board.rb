require_relative 'symbols.rb'

#has the board class, display board. win condition functions
class Board
include Symbols
attr_accessor :grid

    def initialize
        @grid = Array.new(6) {Array.new(7){0}}
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

    def check_vertical?(column,symbol)
        count = 0
        for i in 0..5 do
            if @grid[i][column] == symbol
                count += 1
            end
        end
        count >= 4 ? true : false
    end

    def check_horizontal?(symbol)
        for i in 0..5 do
            if @grid[i].join =~ /#{symbol+symbol+symbol+symbol}/
                return true
            end
        end
        return false
    end

    def check_diagonal? (symbol)
        if check_diagonal_up?(symbol)
            return true
        end
    end

    def check_diagonal_up?(symbol)
        for i in 0..3 do #checking  each row
            for j in 0..4 do #checking  each column
                if @grid[i][j] == symbol && @grid[i+1][j+1] == symbol && @grid[i+2][j+2] == symbol && @grid[i+3][j+3] == symbol
                    return true
                end
            end
        end    
        return false
    end

    def check_diagonal_down?(symbol)
        for i in 0..3 do #checking  each row
            for j in 0..4 do #checking  each column
                if @grid[i][j] == symbol && @grid[i+1][j-1] == symbol && @grid[i+2][j-2] == symbol && @grid[i+3][j-3] == symbol
                    return true
                end
            end
        end    
        return false
    end

end

