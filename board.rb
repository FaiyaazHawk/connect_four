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
    row -= 1 until row == 0 || @grid[row][column] == 0
    row
  end

  def full_column?(column)
    @grid[0][column] != 0
  end

  def check_vertical?(column, symbol)
    count = 0
    (0..5).each do |i|
      count += 1 if @grid[i][column] == symbol
    end
    count >= 4
  end

  def check_horizontal?(symbol)
    (0..5).each do |i|
      return true if @grid[i].join =~ /#{symbol + symbol + symbol + symbol}/
    end
    false
  end

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
    end
    false
  end

  def check_diagonal_down?(symbol)
    (0..5).each do |i| # checking  each row
      (0..6).each do |j| # checking  each column
        if @grid[i][j] == symbol && @grid[i + 1][j - 1] == symbol && @grid[i + 2][j - 2] == symbol && @grid[i + 3][j - 3] == symbol
          return true
        end
      end
    end
    false
  end
end
