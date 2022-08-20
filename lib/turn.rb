def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
    puts "Please enter 1-9:"
    index = gets.strip
    index = input_to_index(index)
    if valid_move?(board, index)
        move(board, index)
        display_board(board)
    else
        turn(board)
    end
end

def move(board, index, current_player = "X")
    board[index] = current_player
end

# code your #valid_move? method here
def valid_move?(board, index)
    if index >= 0 and index <= 8 and position_taken?(board, index) == false
        return true
    else
        return false
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
    if board[index] == " " || board[index]  == "" || board[index] == nil
        return false
      elsif board[index] == "X" || board[index] == "O"
        return true
    end
end  

def input_to_index(index)
    index = index.to_i - 1
end
