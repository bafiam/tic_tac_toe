class Players
  attr_reader :name , :mark
  def initialize(name, mark)
    @name = name
    @mark = mark
  end
  
end

class Grid_cell
  attr_accessor :value
  def initialize(value = '')
    @value = value
  end
end

class Game_board
  attr_accessor :grid_key
  def initialize(move = {})
    @grid_key = move.fetch(:grid_key,grid_default)
  end

  def grid_default
    Array.new(3){Array.new(3){Grid_cell.new}}
  end

  def get_cell(x, y)
    grid_key[y][x]
  end

  def modify_cell(x, y, value)
    get_cell(x, y).value = value
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

  def display_grid
    grid_key.each {|rows| rows.map{|cell| puts cell}}
  end


end