require_relative 'ship'
require_relative 'cell'
require_relative 'water'

class Grid

	def board
		@board ||= Array.new(10) { Array.new(10) { Cell.new }}
	end

	def receive_shot(xcoord,ycoord)
		board[xcoord][ycoord].receive_hit
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
			(ship_start...ship_end).each {|ycoord| board[ycoord][xcoord].place_ship!(ship)}
		end
	end

	def place_ship_cell(xcoord,ycoord, cell)
		board[xcoord][ycoord] = cell
	end

	def content_in(ycoord, xcoord)
		# ycoord = "C"
		# xcoord = "5"
		board[][]
	end

	# def place_ship_tile(xcoord,ycoord, ship)
	# 	board[xcoord][ycoord].place_ship!(ship)
	# end


	# def place_along_line(coord1, coord2, axis2, ship)
	# 	coord1.upto(coord2) {|axis1| place_ship_cell(axis1, axis2, ship) }
	# end

	def print_board
		board.each {|row| puts row.to_s + "\n"}
		puts
	end

	# lay_down_tiles = Proc.new {|axis1| place_ship_cell(axis1, axis2, ship) }

end	



