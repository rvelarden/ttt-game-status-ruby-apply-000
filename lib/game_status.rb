# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], 
  [3,4,5],
  [6,7,8],
  
  [0,3,6], 
  [1,4,7],
  [2,5,8],
  
  [0,4,8], 
  [2,4,6]
  
  ]


  def won?(board)
   WIN_COMBINATIONS.detect do |combination| 
  board[combination[0]] == board[combination[1]] && board[combination[0]] == board[combination[2]] &&  position_taken?(board, combination[0])
  
  end
  end
  
def full?(board)
  board.all? do |combination|
    if combination == "X" || combination == "O" 
    true
  else
    false

end  
end
end 

def draw?(board)
full?(board) && !won?(board)
end

def over?(board)
 if won?(board) || draw?(board) || full?(board)
 true 
  end
end

<<<<<<< HEAD
def winner(board)
  winning_array = won?(board) 
  if winning_array
    board[winning_array[0]]
    
  end  
end
=======
>>>>>>> 0c31d5616d9de9734c5cb87bf31ea0327a5e01e9
