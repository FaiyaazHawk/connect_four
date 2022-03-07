#has the board class, display board. win condition functions
class Board
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
end

