<<<<<<< HEAD
# frozen_string_literal: true
=======
require_relative 'symbols.rb'
>>>>>>> 744e85f3f79d1d02423f836024531eeea3b86c24

require '../symbols.rb'

# has the board class, display board. win condition functions
class Board
  include Symbols
  attr_accessor :grid

<<<<<<< HEAD
  def initialize
    @grid = Array.new(6) { Array.new(7) { 0 } }
  end
=======
    def initialize
        @grid = Array.new(6) {Array.new(7){empty_circle}}
    end
>>>>>>> 744e85f3f79d1d02423f836024531eeea3b86c24

  def display_board
    pp @grid
  end

  def update_board(row, column, symbol)
    @grid[row][column] = symbol
  end

  def find_row(column)
    row = 5 # traversing from lowest row upwards.
    row -= 1 until row == 0 || @grid[row][column] == 0
    row
  end

  def full_column?(column)
    @grid[0][column] != 0
  end

<<<<<<< HEAD
  def check_vertical?(column, symbol)
    count = 0
    (0..5).each do |i|
      count += 1 if @grid[i][column] == symbol
=======
    def check_vertical?(symbol)
        for row in 0..2 do
            for column in 0..6 do
                next if @grid[row][column] != symbol
                return true if @grid[row][column] == symbol && @grid[row+1][column] == symbol && @grid[row+2][column] == symbol && @grid[row+3][column] == symbol
            end
        end
        false
>>>>>>> 744e85f3f79d1d02423f836024531eeea3b86c24
    end
    count >= 4
  end

<<<<<<< HEAD
  def check_horizontal?(symbol)
    (0..5).each do |i|
      return true if @grid[i].join =~ /#{symbol + symbol + symbol + symbol}/
=======
    def check_horizontal?(symbol)
        for row in 0..5 do
            for column in 0..3 do
                next if @grid[row][column] != symbol
                return true if @grid[row][column] == symbol && @grid[row][column+1] == symbol && @grid[row][column+2] == symbol && @grid[row][column+3] == symbol
            end
        end
        false    
>>>>>>> 744e85f3f79d1d02423f836024531eeea3b86c24
    end
    false
  end

<<<<<<< HEAD
  def check_diagonal?(symbol)
    true if check_diagonal_up?(symbol) || check_diagonal_down?(symbol)
  end

  def check_diagonal_up?(symbol)
    (0..5).each do |i| # checking  each row
      (0..6).each do |j| # checking  each column
        if @grid[i][j] == symbol && @grid[i + 1][j + 1] == symbol && @grid[i + 2][j + 2] == symbol && @grid[i + 3][j + 3] == symbol
          return true
        end
      end
=======
    

    def check_diagonal_up?(symbol)
        for row in 3..5 do 
            for column in 0..3 do 
               next if @grid[row][column] != symbol
               return true if @grid[row][column] == symbol && @grid[row-1][column+1] == symbol && @grid[row-2][column+2] == symbol && @grid[row-3][column+3] == symbol
            end
        end
        false    
>>>>>>> 744e85f3f79d1d02423f836024531eeea3b86c24
    end
    false
  end

<<<<<<< HEAD
  def check_diagonal_down?(symbol)
    (0..5).each do |i| # checking  each row
      (0..6).each do |j| # checking  each column
        if @grid[i][j] == symbol && @grid[i + 1][j - 1] == symbol && @grid[i + 2][j - 2] == symbol && @grid[i + 3][j - 3] == symbol
          return true
        end
      end
=======
    def check_diagonal_down?(symbol)
        for row in 0..2 do 
            for column in 0..3 do
                next if @grid[row][column] != symbol
                return true if @grid[row][column] == symbol && @grid[row+1][column+1] == symbol && @grid[row+2][column+2] == symbol && @grid[row+3][column+3] == symbol
            end
        end
        false
    end

    def check_diagonal?(symbol)
        if check_diagonal_up?(symbol) || check_diagonal_down?(symbol)
            return true
        end
        false
>>>>>>> 744e85f3f79d1d02423f836024531eeea3b86c24
    end
    false
  end
end
