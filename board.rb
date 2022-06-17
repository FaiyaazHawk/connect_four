
# frozen_string_literal: true

require '../symbols.rb'


# has the board class, display board. win condition functions
class Board
  include Symbols
  attr_accessor :grid


  
  def initialize
    @grid = Array.new(6) { Array.new(7) { 0 } }
  end


  def display_board
    pp @grid
  end

  def update_board(row, column, symbol)
    @grid[row][column] = symbol
  end

  def find_row(column)
    row = 5 # traversing from lowest row upwards.
    row -= 1 until row.zero? || (@grid[row][column]).zero?
    row
  end

  def full_column?(column)
    @grid[0][column] != 0
  end


  def check_vertical?(symbol)
    (0..2).each do |row|
      (0..6).each do |column|
        next if @grid[row][column] != symbol
        if @grid[row][column] == symbol && @grid[row + 1][column] == symbol && @grid[row + 2][column] == symbol && @grid[row + 3][column] == symbol
          return true
        end
      end
    end
    false
  end

  def check_horizontal?(symbol)
    (0..5).each do |row|
      (0..3).each do |column|
        next if @grid[row][column] != symbol
        if @grid[row][column] == symbol && @grid[row][column + 1] == symbol && @grid[row][column + 2] == symbol && @grid[row][column + 3] == symbol
          return true
        end
      end

    def check_vertical?(symbol)
        for row in 0..2 do
            for column in 0..6 do
                next if @grid[row][column] != symbol
                return true if @grid[row][column] == symbol && @grid[row+1][column] == symbol && @grid[row+2][column] == symbol && @grid[row+3][column] == symbol
            end
        end
        false
    end
    count >= 4
  end

    def check_horizontal?(symbol)
        for row in 0..5 do
            for column in 0..3 do
                next if @grid[row][column] != symbol
                return true if @grid[row][column] == symbol && @grid[row][column+1] == symbol && @grid[row][column+2] == symbol && @grid[row][column+3] == symbol
            end
        end
        false    

    end
    false
  end


  def check_diagonal_up?(symbol)
    (3..5).each do |row|
      (0..3).each do |column|
        next if @grid[row][column] != symbol
        if @grid[row][column] == symbol && @grid[row - 1][column + 1] == symbol && @grid[row - 2][column + 2] == symbol && @grid[row - 3][column + 3] == symbol
          return true
        end
      end

    

    def check_diagonal_up?(symbol)
        for row in 3..5 do 
            for column in 0..3 do 
               next if @grid[row][column] != symbol
               return true if @grid[row][column] == symbol && @grid[row-1][column+1] == symbol && @grid[row-2][column+2] == symbol && @grid[row-3][column+3] == symbol
            end
        end
        false    

    end
    false
  end


  def check_diagonal_down?(symbol)
    (0..2).each do |row|
      (0..3).each do |column|
        next if @grid[row][column] != symbol
        if @grid[row][column] == symbol && @grid[row + 1][column + 1] == symbol && @grid[row + 2][column + 2] == symbol && @grid[row + 3][column + 3] == symbol
          return true

    def check_diagonal_down?(symbol)
        for row in 0..2 do 
            for column in 0..3 do
                next if @grid[row][column] != symbol
                return true if @grid[row][column] == symbol && @grid[row+1][column+1] == symbol && @grid[row+2][column+2] == symbol && @grid[row+3][column+3] == symbol
            end
        end
      end
    end
    false
  end

    def check_diagonal?(symbol)
        if check_diagonal_up?(symbol) || check_diagonal_down?(symbol)
            return true
        end
        false
    end

    false
  end
end
