class Grid

	def board
		@board ||= []
	end

	def populate_1d(board)
		10.times {board << []}
	end

	def populate_2d(board)
		board.each {|row| populate_1d(row) }
	end

end	

