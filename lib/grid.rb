require_relative 'ship'
require_relative 'cell'
require_relative 'water'

require 'debugger'

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

	def place_whole_ship(current_cell, orientation, ship)
		return unless area_legal?(current_cell, orientation, ship)
		ship.size.times do
			place_ship_cell(current_cell, ship)
			current_cell = get_next_coordinate(current_cell, orientation)
		end
	end

	def area_legal?(current_cell, orientation, ship)
		ship.size.times do
			return false if illegal_cell?(current_cell)
			current_cell = get_next_coordinate(current_cell, orientation)
		end
	end

	def illegal_cell?(current_cell)
		nonexistent?(current_cell) || content_in(current_cell).contents.class != Water
	end

	def nonexistent?(cell)
		content_in(cell).nil?
	end

	def get_next_coordinate(coordinates, orientation)
		return coordinates.next if orientation == "vertical" 
		coordinates[0].next + coordinates[1]
	end

	def place_ship_cell(starting_point, ship)
		content_in(starting_point).place_ship!(ship)
	end

	def translate_char(char)
		%w[A B C D E F G H I J].find_index(char)
	end

	def translate_num(num)
		num.to_i - 1
	end

	def content_in(reference)
		board[translate_num(reference[1])][translate_char(reference[0])]
	end

	# def place_ship_tile(xcoord,ycoord, ship)
	# 	board[xcoord][ycoord].place_ship!(ship)
	# end


	# def place_along_line(coord1, coord2, axis2, ship)
	# 	coord1.upto(coord2) {|axis1| place_ship_cell(axis1, axis2, ship) }
	# end

	def print_board
		board.each do |row| 
			board.each { |cell| puts cell.contents.to_s }
			puts ""
		end
	end

	# lay_down_tiles = Proc.new {|axis1| place_ship_cell(axis1, axis2, ship) }

end	



