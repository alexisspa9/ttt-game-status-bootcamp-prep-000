# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],
                    [3,4,5],
                    [6,7,8],
                    [0,3,6],
                    [1,4,7],
                    [2,5,8],
                    [0,4,8],
                    [2,4,6]]
                    
                    
def won?(board)
  WIN_COMBINATIONS.each do |combination|
    if (combination[0] == "X" && combination[1] == "X" && combination[2] == "X" || combination[0] == "Y" && combination[1] == "Y" && combination[2] == "Y")
      return combination
      else
      return false
    end
  end
end