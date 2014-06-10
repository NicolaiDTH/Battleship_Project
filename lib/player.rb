require_relative 'grid'
require 'debugger'

class Player

	def initialize(grid = Grid.new)
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

	def place_ship
			@grid.place_whole_ship(specify_starting_coord.capitalize, "horizontal", remaining_ships.find { |ship| ship.class.to_s == specify_ship.capitalize})
													
	end

	# def user_input
	# 	gets.chomp
	# end

end

