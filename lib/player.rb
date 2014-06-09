require_relative 'grid'

class Player

	def initialize(grid)
		@grid = grid
		@ships = []
	end

	def grid
		@grid
	end

	def receive_ships(ships)
		@ships << ships
	end

	def remaining_ships
		@ships
	end

	def specify_ship
		user_input
	end

	def specify_starting_coord
		user_input
	end

	def specify_orientation
		user_input
	end

	# def user_input
	# 	gets.chomp
	# end

end

