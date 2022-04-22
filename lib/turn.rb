def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "------------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "------------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
    if index.between?(0,8) && !position_taken?(board, index)
        return true
    else
        false
    end
end

def input_to_index(input)
    index = input.to_i - 1 
end

def position_taken?(board, index)
    bool = nil
    if (board[index] == "X" || board[index] == "O")
        bool = true
    else
        bool = false
    end
    return bool
end

def move(board, index, player = "X") 
    
    board[index] = player
end

def turn(board)
    puts "Please enter 1-9:"
    input = input_to_index(gets.chomp.strip)
    if valid_move?(board, input) == false
        turn(board)
    end
end

