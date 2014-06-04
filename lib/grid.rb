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

	def place_ship_tile(xcoord,ycoord, ship)
		board[xcoord][ycoord] = ship
	end

	def check_ship_size(ship)
		ship.size
	end

	def orient_ship(xcoord1, ycoord1, xcoord2, ycoord2)
		return :vertical if xcoord1 == xcoord2
		return :horizontal if ycoord1 == ycoord2
		:neither
	end

	# def place_ship(xcoord1, ycoord1, xcoord2, ycoord2, ship)
	# 	place_ship_tile()
	# end

	def print_board
		board.each {|row| puts row.to_s + "\n"}
	end

end	

# Grid.new.print_board
