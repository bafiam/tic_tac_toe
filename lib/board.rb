class Game_board
  attr_accessor :grid_key

  def initialize
     i = 0
     @grid_key = {}.fetch(:grid_key, Array.new(3){Array.new(3){"| #{i += 1} | "}})
  end

  def convert_input(moves)
    mapping = {
      "1" => [0,0],
      "2" => [1,0],
      "3" => [2,0],
      "4" => [0,1],
      "5" => [1,1],
      "6" => [2,1],
      "7" => [0,2],
      "8" => [1,2],
      "9" => [2,2]
    }
    return mapping[moves]
  end
end

