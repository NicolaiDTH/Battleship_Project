class Cell

	def initialize
		@occupant = :empty
	end

	def occupant
		@occupant
	end

	def place_ship!(ship)
		@occupant = ship
	end

	def place_water!(water)
		@occupant = water
	end


end
