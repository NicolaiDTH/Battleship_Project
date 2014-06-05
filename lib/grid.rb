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

	def ship_orientation(xcoord1, ycoord1, xcoord2, ycoord2)
		return :horizontal if xcoord1 == xcoord2
		return :vertical if ycoord1 == ycoord2
		:neither
	end

	def place_whole_ship(xcoord1, ycoord1, xcoord2, ycoord2, ship)
		if ship_orientation(xcoord1, ycoord1, xcoord2, ycoord2) == :vertical 
			place_along_line(xcoord1,xcoord2, ycoord1, ship)
		else
			place_along_line(ycoord1,ycoord2, xcoord1, ship)
		
			# (ycoord1..ycoord2).to_a.sort.each
			# place_ship_tile(xcoord1, ycoord1, ship)
		end
	end

	def place_along_line(coord1, coord2, axis2, ship)
		coord1.upto(coord2) {|axis1| place_ship_tile(axis1, axis2, ship) }
	end

	def print_board
		board.each {|row| puts row.to_s + "\n"}
	end

	# lay_down_tiles = Proc.new {|axis1| place_ship_tile(axis1, axis2, ship) }

end	

# Grid.new.print_board

# Perl was the first language to use it. Groovy is another language that supports it. Basically instead of returning 1 (true) or 0 (false) depending on whether the arguments are equal or unequal, the spaceship operator will return 1, 0, or −1 depending on the value of the left argument relative to the right argument.

# a <=> b :=
#   if a < b then return -1
#   if a = b then return  0
#   if a > b then return  1
# It's useful for sorting an array.

