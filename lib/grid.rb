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

	def place_carrier(start_reference, orientation, ship)
		if orientation == "vertical"
			ship_start = start_reference
			ship_end = ycoord + ship_number_of_tiles(ship) 
			(ship_start...ship_end).each {|ycoord| board[ycoord][xcoord].place_ship!(ship)}
		end
	end

	def place_ship_cell(xcoord,ycoord, cell)
		board[xcoord][ycoord] = cell
	end

	def translate_char(char)
		%w[A B C D E F G H I J].find_index(char)
	end

	def translate_num(num)
		num.to_i - 1
	end

	def content_in(reference)
		board[translate_char(reference[0])][translate_num(reference[1])]
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



