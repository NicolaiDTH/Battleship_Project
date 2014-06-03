class Grid

	def initialize
		populate_1d(board)
		populate_2d(board)
	end

	def board
		@board ||= []
	end

	def populate_1d(board)
		10.times {board << []}
	end

	def populate_2d(board)
		board.each {|row| populate_1d(row) }
	end

	def print_board
		board.each {|row| puts row.to_s + "\n"}
	end

	

end	

# Grid.new.print_board
