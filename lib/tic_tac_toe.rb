class TicTacToe
  def initialize(board)
    @board = board || Array.new(9, " ")
  end
end

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5]
  [6, 7, 8]
  [0]
  ]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "