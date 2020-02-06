# frozen_string_literal: true

class Logic
	def initialize
		@move_count = 0
	end

	def pos_empty(move)
		return -1 unless (move != "| O | " && move != "| X | ")
    @move_count += 1

		0
	end

  def manage_input(input)
  	return -1 if input.length != 1
  	return -1 if !input.to_i.between?(1, 9)

  	1
  end

  def row(x, t, board)
  	3.times { |k| return 0 if board.grid_key[x][k] != t } # row
    3	
  end

  def col(x, t, board)
    3.times { |k| return 0 if board.grid_key[k][x] != t } # col
    3
  end

  def diag(t, board, x)
      3.times { |k| return 0 if board.grid_key[k][k] != t}
     if x == 1
      3.times { |k| return 0 if board.grid_key[k][2 - k] != t} # row
     end
    3
  end

  def anti_diag(t, board)
    3.times { |k| return 0 if board.grid_key[k][2 - k] != t} # row
    3
  end

  def check_win(x, y, t, board)
    res = 0
    res += row(y, t, board)
    res += col(x, t, board)
    res += diag(t, board, x) == 3 && x == y
    res += anti_diag(t, board) if (x - y).abs == 2
    res == 0 ? 0 : 3
  end

  def game_end(x, y, t, board)
    return true if check_win(x, y, t, board) ==3
    return 2 if @move_count == 9

    0
  end
end
