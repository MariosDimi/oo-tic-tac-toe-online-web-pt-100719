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
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(player)
    player.to_i - 1 
  end
  
  def move(position, char
    @board[position] = char
  end
  
  def position_taken?(index_i)
    ((@board[index_i] == "X") || (@board[index_i] == "O"))
  end
  
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end
  
  def turn 
    puts "Place your position between 1-9"
    input = gets.strip
    index = input_to_index(input)
    char = current_player
    if valid_move?(index)
      move(index, char)
      display_board
    else
      turn
    end
  end