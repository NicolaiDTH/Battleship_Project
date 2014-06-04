require 'ships'

class Grid

	def initialize
		10.times do 
			board << [] 
		end
		board.each do |r| 
			10.times do
				r << nil
			end
		end
	end

	def board
		@board ||= []
	end

	# def populate_1d(board)
	# 	10.times {board << []}
	# end

	# def populate_2d(board)
	# 	board.each {|row| populate_1d(row) }
	# end

	def receive_shot(xcoord,ycoord)
		if board[xcoord][ycoord].is_a? Ship
			board[xcoord][ycoord].receive_hit
			board[xcoord][ycoord] = :H
		else 
			board[xcoord][ycoord] = :M
		end
	end

	def place_ship(xcoord,ycoord, ship)
		board[xcoord][ycoord] = ship
	end

	def print_board
		board.each {|row| puts row.to_s + "\n"}
	end

end	

# Grid.new.print_board
