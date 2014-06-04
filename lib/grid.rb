require 'ships'
require 'debugger'

class Grid

	def initialize
		#debugger
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

	def populate_1d(board)
		10.times {board << []}
	end

	def populate_2d(board)
		board.each {|row| populate_1d(row) }
	end

	def receive_shot(xcoord,ycoord)
		if board[xcoord][ycoord].is_a? Ship
			board[xcoord][ycoord] = :H
		else 
			board[xcoord][ycoord] = :M
		end
	end

	def receive_hit(xcoord,ycoord)
		board[xcoord][ycoord] = :H
	end

	def place_ship(xcoord,ycoord, ship)
		board[xcoord][ycoord] = ship
	end

	def print_board
		board.each {|row| puts row.to_s + "\n"}
	end

end	

# Grid.new.print_board
