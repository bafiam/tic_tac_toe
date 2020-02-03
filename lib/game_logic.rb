class Logic
	def initialize
		@move_count = 0
	end

	def pos_empty(move)
		return -1 unless move == "|   | "
		0
	end

  def manage_input(input)
  	return -1 if input.length != 1
  	return -1 if !input.to_i.between?(1, 9)

  	 @move_count += 1
  	 1
  end

  def game_end
  	return 2 if @move_count == 9
  	0
  end


end

