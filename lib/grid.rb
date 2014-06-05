require_relative 'ship'

class Grid

	def initialize
		build_grid
	end

	def board
		@board ||= []
	end

	def build_grid
		10.times { board << Array.new(10, nil) }
	end

	def receive_shot(xcoord,ycoord)
		if board[xcoord][ycoord].is_a? Ship
			board[xcoord][ycoord].receive_hit
			board[xcoord][ycoord] = :H
		else 
			board[xcoord][ycoord] = :M
		end
	end

	def ship_number_of_tiles(ship)
		ship.size
	end

	def place_whole_ship(ycoord, xcoord, orientation, ship)
# given 0,0, vertical and titanic we change cell state to titanic
		if orientation == "vertical"
			# means differing y ycoords
			ship_start = ycoord
			ship_end = ycoord + ship_number_of_tiles(ship) 
			(ship_start...ship_end).each {|ycoord| place_ship_tile(ycoord, xcoord, ship)}
		else

		end
	end

	def place_ship_tile(xcoord,ycoord, ship)
		board[xcoord][ycoord] = ship
	end

	def place_along_line(coord1, coord2, axis2, ship)
		coord1.upto(coord2) {|axis1| place_ship_tile(axis1, axis2, ship) }
	end

	def print_board
		board.each {|row| puts row.to_s + "\n"}
		puts
	end

	# lay_down_tiles = Proc.new {|axis1| place_ship_tile(axis1, axis2, ship) }

end	



